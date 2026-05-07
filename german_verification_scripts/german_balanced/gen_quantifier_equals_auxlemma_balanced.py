# gen_quantifier_equals_auxlemma_balanced.py
# Generates: quantifier_equals_auxlemma.smt2
#
# Goal:
#   Check equivalence between:
#     (A) Quantifier + recursive count (baseline)
#     (B) Aux-lemma / loop-like explicit counts
#
# Output formula:
#   (assert (not (= baseline_ok aux_ok)))
# If Z3 returns SAT -> there exists a counterexample (NOT equivalent)
# If UNSAT -> equivalent for the given dataset constraints
#
# Notes:
# - Uses (set-logic ALL) to allow quantifiers + recfun.
# - Assumes labels are stored in array O: Array Int Int
# - Assumes m is defined in the input file as (define-fun m () Int 1000) or similar.

import os

# =====================
# CONFIG
# =====================
IN_FILE = "1000.smt2"   # <-- change to your actual data-only input file
OUT_FILE = "quantifier_equals_auxlemma.smt2"

M = 1000                 # dataset size (must match your input file's m)
LABELS = [1, 2]          # label values
THRESHOLD = 250          # for m=1000 and 25% each

# If your input file already sets logic, we will remove it and re-insert (set-logic ALL).
FORCE_SET_LOGIC_ALL = True


# =====================
# UTIL
# =====================
def strip_check_sat_and_setlogic(lines: list[str]) -> list[str]:
    kept = []
    for ln in lines:
        if "(check-sat)" in ln:
            continue
        if FORCE_SET_LOGIC_ALL and ln.strip().startswith("(set-logic"):
            continue
        kept.append(ln)
    return kept


def emit_baseline_quantifier_block() -> str:
    # Baseline idea:
    #   Let threshold = m / (l * B) where l=2, B=2 -> 1000/(2*2)=250
    #   "Not exists i in {0,1} such that count(label_i) < threshold"
    #
    # This matches your original structure closely (quantifiers + recfun).
    return f"""
; =================================================
; Baseline (Quantifier + Recursive Counting)
; =================================================

(set-logic ALL)

; Label list L = [1,2]
(declare-const L (Array Int Int))
(define-fun l () Int {len(LABELS)})

(assert (= (select L 0) {LABELS[0]}))
(assert (= (select L 1) {LABELS[1]}))

; B is just used to reproduce the threshold formula m/(l*B)
(define-fun B () Int 2)

; threshold = m / (l * B)  -> for m=1000, l=2, B=2 => 250
(define-fun threshold_q () Int (div m (* l B)))

; Count occurrences of a given label "item" in array A[0..size]
(define-fun-rec sum-if-value ((A (Array Int Int)) (item Int) (size Int)) Int
  (ite (< size 0)
       0
       (ite (= (select A size) item)
            (+ 1 (sum-if-value A item (- size 1)))
            (sum-if-value A item (- size 1))
       )
  )
)

; baseline_ok: every label in L appears at least threshold_q times
(define-fun baseline_ok () Bool
  (not
    (exists ((i Int))
      (and
        (>= i 0)
        (< i l)
        (< (sum-if-value O (select L i) (- m 1))
           threshold_q)
      )
    )
  )
)
"""


def emit_auxlemma_block() -> str:
    # Aux-lemma idea:
    #   Explicitly compute sum1 and sum2 by unrolling ite's (loop-like).
    #   aux_ok := (sum1 >= THRESHOLD) and (sum2 >= THRESHOLD)
    #
    # This is quantifier-free and recursion-free.
    def emit_sum(label: int, name: str) -> str:
        terms = []
        for i in range(M):
            terms.append(f"    (ite (= (select O {i}) {label}) 1 0)")
        return "\n".join([
            f"(define-fun {name} () Int",
            "  (+",
            *terms,
            "  )",
            ")\n",
        ])

    sum1 = emit_sum(LABELS[0], "sum1")
    sum2 = emit_sum(LABELS[1], "sum2")

    return f"""
; =================================================
; Auxiliary Lemma / Loop-like (Explicit Counting)
; =================================================

(define-fun threshold_a () Int {THRESHOLD})

{sum1}
{sum2}

; Optional: restrict O[i] to be one of the labels (keeps the model honest)
(assert
  (and
{chr(10).join([f"    (or (= (select O {i}) {LABELS[0]}) (= (select O {i}) {LABELS[1]}))" for i in range(M)])}
  )
)

(define-fun aux_ok () Bool
  (and (>= sum1 threshold_a)
       (>= sum2 threshold_a))
)
"""


def emit_equivalence_check() -> str:
    return """
; =================================================
; Equivalence Check
; SAT   -> There exists a counterexample (NOT equivalent)
; UNSAT -> Equivalent under the given dataset constraints
; =================================================

(assert (not (= baseline_ok aux_ok)))
(check-sat)
"""


def main():
    if not os.path.exists(IN_FILE):
        raise FileNotFoundError(f"Missing input file: {IN_FILE}")

    with open(IN_FILE, "r", encoding="utf-8") as f:
        lines = f.readlines()

    kept = strip_check_sat_and_setlogic(lines)

    with open(OUT_FILE, "w", encoding="utf-8") as f:
        f.writelines(kept)
        if kept and not kept[-1].endswith("\n"):
            f.write("\n")
        f.write(emit_baseline_quantifier_block())
        f.write(emit_auxlemma_block())
        f.write(emit_equivalence_check())

    print(f"✅ Generated: {OUT_FILE}")
    print(f" - Input: {IN_FILE}")
    print(f" - m: {M}, threshold: {THRESHOLD}")


if __name__ == "__main__":
    main()