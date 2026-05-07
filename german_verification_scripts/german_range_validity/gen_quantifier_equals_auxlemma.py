#!/usr/bin/env python3
# Generates "quantifier_equals_auxlemma.smt2" from "1000.smt2"
# It compares:
#  - baseline_ok : not (exists i. violation(i))   (no forall)
#  - aux_ok      : conjunction of per-row Bool lemmas
# Equivalence check:
#  assert (not (= baseline_ok aux_ok))
# Expected result: UNSAT (means they are equivalent)

IN_FILE = "1000.smt2"
OUT_FILE = "quantifier_equals_auxlemma.smt2"

M = 1000
COL_IDX = 1          # duration column index in the full dataset (0-based)
DURATION_MIN = 0
DURATION_MAX = 600   # we use: duration < 600 (strict), same as your spec

def main():
    with open(IN_FILE, "r", encoding="utf-8") as f:
        base = f.read()

    out = []
    out.append(base.rstrip())
    out.append("\n\n; =============================================================")
    out.append("; Range validity (duration) equivalence check: baseline vs aux lemma")
    out.append("; M = 1000, column index = 1, range: [0, 600)")
    out.append("; =============================================================\n")

    # Shared bounds
    out.append(f"(define-fun duration_min () Int {DURATION_MIN})")
    out.append(f"(define-fun duration_max () Int {DURATION_MAX})\n")

    # -------------------------
    # Baseline: not exists violation
    # -------------------------
    out.append("; ---- Baseline (quantifier style, but no forall) ----")
    out.append("(define-fun baseline_ok () Bool")
    out.append("  (not")
    out.append("    (exists ((i Int))")
    out.append("      (and (>= i 0) (< i m)")
    out.append("           (or (< (select (select D i) 1) duration_min)")
    out.append("               (>= (select (select D i) 1) duration_max))")
    out.append("      )")
    out.append("    )")
    out.append("  )")
    out.append(")\n")

    # -------------------------
    # Aux lemma: per-row Bool + big AND
    # -------------------------
    out.append("; ---- Auxiliary lemma style: split into per-row Booleans ----")
    for i in range(M):
        out.append(f"(declare-const a_{i} Bool)")
        out.append(
            f"(assert (= a_{i} (and (>= (select (select D {i}) {COL_IDX}) duration_min)"
            f"                          (<  (select (select D {i}) {COL_IDX}) duration_max))))"
        )
    out.append("\n(define-fun aux_ok () Bool")
    out.append("  (and")
    for i in range(M):
        out.append(f"    a_{i}")
    out.append("  )")
    out.append(")\n")

    # -------------------------
    # Equivalence proof: assert NOT equal, expect UNSAT
    # -------------------------
    out.append("; ---- Equivalence check: should be UNSAT if they are equivalent ----")
    out.append("(assert (not (= baseline_ok aux_ok)))")
    out.append("(check-sat)")
    out.append("; =============================================================\n")

    with open(OUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(out))

if __name__ == "__main__":
    main()