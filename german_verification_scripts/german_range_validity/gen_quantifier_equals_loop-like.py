# gen_quantifier_equals_looplike_range_validity_1000.py
# Input : 1000.smt2  (data-only: D, m=1000, n, row asserts, etc.)
# Output: quantifier_equals_loop-like.smt2
#
# Checks equivalence between:
#   - Quantifier-based range_validity
#   - Loop-like (fully unrolled AND) range_validity
#
# Result:
#   UNSAT -> equivalent
#   SAT   -> not equivalent (a counterexample exists)

import os

IN_FILE = "1000.smt2"
OUT_FILE = "quantifier_equals_loop-like.smt2"

M = 1000
COL_IDX = 1
LOW = 0
HIGH = 600

FORCE_SET_LOGIC_ALL = True


def strip_checksat_and_setlogic(lines: list[str]) -> list[str]:
    kept = []
    for ln in lines:
        if "(check-sat)" in ln:
            continue
        if FORCE_SET_LOGIC_ALL and ln.strip().startswith("(set-logic"):
            continue
        kept.append(ln)
    return kept


def emit_looplike_ok(m: int) -> str:
    # Build a big (and ...) with m conjuncts.
    buf = []
    buf.append("(define-fun l_ok () Bool")
    buf.append("  (and")
    for i in range(m):
        buf.append(
            f"    (and (>= (select (select D {i}) {COL_IDX}) {LOW})"
            f"         (<  (select (select D {i}) {COL_IDX}) {HIGH}))"
        )
    buf.append("  )")
    buf.append(")")
    return "\n".join(buf)


def emit_equivalence_block() -> str:
    return f"""
; =================================================
; Equivalence Check: range_validity (Quantifier vs Loop-like)
; Column index: {COL_IDX}
; Constraint: {LOW} <= D[i][{COL_IDX}] < {HIGH}
; m = {M}
;
; If Z3 returns:
;   UNSAT -> two specifications are equivalent
;   SAT   -> not equivalent (counterexample exists)
; =================================================

(set-logic ALL)

; ---------- Quantifier-based specification ----------
(define-fun q_ok () Bool
  (forall ((i Int))
    (=> (and (>= i 0) (< i m))
        (and (>= (select (select D i) {COL_IDX}) {LOW})
             (<  (select (select D i) {COL_IDX}) {HIGH}))))
)

; ---------- Loop-like (unrolled) specification ----------
{emit_looplike_ok(M)}

; ---------- Equivalence query ----------
(assert (not (= q_ok l_ok)))

(check-sat)
"""


def main():
    if not os.path.exists(IN_FILE):
        raise FileNotFoundError(f"Missing input file: {IN_FILE}")

    with open(IN_FILE, "r", encoding="utf-8") as f:
        lines = f.readlines()

    kept = strip_checksat_and_setlogic(lines)

    with open(OUT_FILE, "w", encoding="utf-8") as f:
        f.writelines(kept)
        if kept and not kept[-1].endswith("\n"):
            f.write("\n")
        f.write(emit_equivalence_block())

    print(f"✅ Generated: {OUT_FILE}")
    print(f"Run: z3 {OUT_FILE}")


if __name__ == "__main__":
    main()