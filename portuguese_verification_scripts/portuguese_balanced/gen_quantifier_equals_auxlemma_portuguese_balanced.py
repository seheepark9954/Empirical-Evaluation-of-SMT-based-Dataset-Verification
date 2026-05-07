# gen_quantifier_equals_auxlemma_portuguese_balanced.py
# Input: 40000.smt2
# Output: quantifier_equals_auxlemma.smt2
#
# Meaning:
#   SAT   -> baseline and auxlemma differ
#   UNSAT -> baseline and auxlemma are equivalent for this dataset

import re
from pathlib import Path

IN_FILE = "5000.smt2"
OUT_FILE = "quantifier_equals_auxlemma.smt2"

LABELS = [0, 1]   # Portuguese Bank: no -> 0, yes -> 1
B = 2             # same balance parameter as baseline


def read_input(path: str) -> str:
    return Path(path).read_text(encoding="utf-8")


def extract_m(text: str) -> int:
    match = re.search(r"\(define-fun\s+m\s+\(\)\s+Int\s+(\d+)\)", text)
    if not match:
        raise ValueError("Could not find '(define-fun m () Int ...)'")
    return int(match.group(1))


def extract_data_constraints(text: str) -> str:
    """
    Keep only:
      - O declaration
      - m definition
      - dataset assertions: (assert (= (select O i) value))

    Remove:
      - original L declaration
      - recursive sum-if-value
      - original property assert
      - check-sat
    """
    lines = text.splitlines()
    kept = []

    for line in lines:
        stripped = line.strip()

        if stripped.startswith("(set-logic"):
            continue

        if stripped == "(check-sat)":
            continue

        if stripped.startswith("(declare-const O"):
            kept.append(line)
            continue

        if stripped.startswith("(define-fun m"):
            kept.append(line)
            continue

        if re.match(r"\(assert\s+\(=\s+\(select\s+O\s+\d+\)\s+\d+\)\)", stripped):
            kept.append(line)
            continue

    return "\n".join(kept)


def baseline_block() -> str:
    return f"""
; =================================================
; Baseline: Quantifier + Recursive Counting
; =================================================

(declare-const L (Array Int Int))
(define-fun l () Int {len(LABELS)})

(assert (= (select L 0) {LABELS[0]}))
(assert (= (select L 1) {LABELS[1]}))

(define-fun B () Int {B})
(define-fun threshold_q () Int (div m (* l B)))

(define-fun-rec sum-if-value ((A (Array Int Int)) (item Int) (size Int)) Int
  (ite (< size 0)
       0
       (ite (= (select A size) item)
            (+ 1 (sum-if-value A item (- size 1)))
            (sum-if-value A item (- size 1))
       )
  )
)

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


def explicit_sum(label: int, name: str, m: int) -> str:
    terms = [
        f"    (ite (= (select O {i}) {label}) 1 0)"
        for i in range(m)
    ]

    return "\n".join([
        f"(define-fun {name} () Int",
        "  (+",
        *terms,
        "  )",
        ")"
    ])


def auxlemma_block(m: int) -> str:
    threshold = m // (len(LABELS) * B)

    return f"""
; =================================================
; Auxiliary-Lemma / Explicit Counting
; =================================================

(define-fun threshold_a () Int {threshold})

{explicit_sum(LABELS[0], "sum0", m)}

{explicit_sum(LABELS[1], "sum1", m)}

(define-fun aux_ok () Bool
  (and
    (>= sum0 threshold_a)
    (>= sum1 threshold_a)
  )
)
"""


def equivalence_check() -> str:
    return """
; =================================================
; Equivalence Check
; SAT   -> counterexample exists, not equivalent
; UNSAT -> equivalent for the fixed dataset encoding
; =================================================

(assert (not (= baseline_ok aux_ok)))
(check-sat)
"""


def main():
    text = read_input(IN_FILE)
    m = extract_m(text)
    data_constraints = extract_data_constraints(text)

    output = "\n\n".join([
        "(set-logic ALL)",
        data_constraints,
        baseline_block(),
        auxlemma_block(m),
        equivalence_check(),
    ])

    Path(OUT_FILE).write_text(output, encoding="utf-8")

    print(f"Generated: {OUT_FILE}")
    print(f"Input: {IN_FILE}")
    print(f"m = {m}")
    print(f"Expected Z3 result: unsat")


if __name__ == "__main__":
    main()