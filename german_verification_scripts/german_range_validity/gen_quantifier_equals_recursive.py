# gen_quantifier_equals_recursive_range_validity_1000.py
# Input : 1000_data_range_validity.smt2   (data-only: D, m, n, rows, etc.)
# Output: quantifier_equals_recursive.smt2
#
# This file checks equivalence between:
#   - Quantifier-based range_validity
#   - Recursive range_validity
#
# Result:
#   UNSAT -> equivalent
#   SAT   -> not equivalent (counterexample exists)

import os

IN_FILE = "1000.smt2"
OUT_FILE = "quantifier_equals_recursive.smt2"

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


def emit_equivalence_block() -> str:
    return f"""
; =================================================
; Equivalence Check: range_validity (German Credit)
; Column index: {COL_IDX}
; Constraint: {LOW} <= D[i][{COL_IDX}] < {HIGH}
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

; ---------- Recursive specification ----------
(define-fun-rec local-range-ok ((i Int)) Bool
  (ite (< i 0)
       true
       (and
         (>= (select (select D i) {COL_IDX}) {LOW})
         (<  (select (select D i) {COL_IDX}) {HIGH})
         (local-range-ok (- i 1))
       )
  )
)

(define-fun r_ok () Bool
  (local-range-ok (- m 1))
)

; ---------- Equivalence query ----------
(assert (not (= q_ok r_ok)))

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
    print("Run: z3 quantifier_equals_recursive_range_validity_1000.smt2")


if __name__ == "__main__":
    main()