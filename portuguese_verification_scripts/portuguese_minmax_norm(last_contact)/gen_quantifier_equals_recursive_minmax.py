from pathlib import Path
import re

IN_FILE = "30000.smt2"
OUT_FILE = "quantifier_equals_recursive.smt2"


def read_file(path):
    return Path(path).read_text(encoding="utf-8")


def extract_m(text):
    match = re.search(r"\(define-fun\s+m\s+\(\)\s+Int\s+(\d+)\)", text)
    if not match:
        raise ValueError("Could not find m")
    return int(match.group(1))


def extract_dataset_block(text):
    lines = text.splitlines()
    kept = []

    for line in lines:
        s = line.strip()

        if s.startswith("(set-logic"):
            continue

        # Stop before original property definitions
        if s.startswith("(define-fun min"):
            break

        kept.append(line)

    return "\n".join(kept)


def baseline_property():
    return """
; =================================================
; Baseline: quantified min-max property
; =================================================

(define-fun baseline_ok () Bool
  (not
    (exists ((i Int))
      (and
        (>= i 0)
        (< i m)
        (or
          (< (select (select D i) 0) min)
          (> (select (select D i) 0) max)
        )
      )
    )
  )
)
"""


def recursive_property():
    return """
; =================================================
; Recursive min-max property
; =================================================

(define-fun-rec recursive_check ((i Int)) Bool
  (ite (< i 0)
       true
       (and
         (>= (select (select D i) 0) min)
         (<= (select (select D i) 0) max)
         (recursive_check (- i 1))
       )
  )
)

(define-fun recursive_ok () Bool
  (recursive_check (- m 1))
)
"""


def equivalence_check():
    return """
; =================================================
; Equivalence check
; SAT   -> baseline and recursive differ
; UNSAT -> equivalent
; =================================================

(assert (not (= baseline_ok recursive_ok)))
(check-sat)
"""


def main():
    text = read_file(IN_FILE)
    m = extract_m(text)
    dataset_block = extract_dataset_block(text)

    output = "\n\n".join([
        "(set-logic ALL)",
        dataset_block,
        "(define-fun min () Real -1.0)",
        "(define-fun max () Real 1.0)",
        baseline_property(),
        recursive_property(),
        equivalence_check()
    ])

    Path(OUT_FILE).write_text(output, encoding="utf-8")

    print(f"Generated: {OUT_FILE}")
    print(f"m = {m}")
    print("Expected Z3 result: unsat")


if __name__ == "__main__":
    main()