# gen_quantifier_equals_looplike_portuguese_balanced.py

import re
from pathlib import Path

IN_FILE = "5000.smt2"
OUT_FILE = "quantifier_equals_loop-like.smt2"

LABELS = [0, 1]
B = 2


def read_input(path: str) -> str:
    return Path(path).read_text(encoding="utf-8")


def extract_m(text: str) -> int:
    match = re.search(r"\(define-fun\s+m\s+\(\)\s+Int\s+(\d+)\)", text)
    if not match:
        raise ValueError("m not found")
    return int(match.group(1))


def extract_dataset_constraints(text: str) -> str:
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
; Baseline Quantifier Version
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


def looplike_sum(label: int, name: str, m: int) -> str:
    expr = "0"

    for i in range(m):
        expr = f"(+ {expr} (ite (= (select O {i}) {label}) 1 0))"

    return f"""
(define-fun {name} () Int
  {expr}
)
"""


def looplike_block(m: int) -> str:
    threshold = m // (len(LABELS) * B)

    return f"""
; =================================================
; Loop-like Encoding
; =================================================

(define-fun threshold_l () Int {threshold})

{looplike_sum(0, "count0", m)}

{looplike_sum(1, "count1", m)}

(define-fun looplike_ok () Bool
  (and
    (>= count0 threshold_l)
    (>= count1 threshold_l)
  )
)
"""


def equivalence_check() -> str:
    return """
; =================================================
; Equivalence Check
; SAT   -> different semantics
; UNSAT -> equivalent
; =================================================

(assert (not (= baseline_ok looplike_ok)))
(check-sat)
"""


def main():
    text = read_input(IN_FILE)

    m = extract_m(text)

    dataset_constraints = extract_dataset_constraints(text)

    output = "\n\n".join([
        "(set-logic ALL)",
        dataset_constraints,
        baseline_block(),
        looplike_block(m),
        equivalence_check(),
    ])

    Path(OUT_FILE).write_text(output, encoding="utf-8")

    print(f"Generated: {OUT_FILE}")
    print(f"m = {m}")
    print("Expected result: unsat")


if __name__ == "__main__":
    main()