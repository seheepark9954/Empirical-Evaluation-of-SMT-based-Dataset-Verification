from pathlib import Path
import re

IN_FILE = "30000.smt2"
OUT_FILE = "quantifier_equals_auxlemma.smt2"


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

        # Skip old logic declaration
        if s.startswith("(set-logic"):
            continue

        # Stop before property definitions
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


def auxlemma_property(m):
    checks = []

    for i in range(m):
        checks.append(
            f"    (and (>= (select (select D {i}) 0) min) "
            f"(<= (select (select D {i}) 0) max))"
        )

    return """
; =================================================
; Auxiliary-lemma: explicit min-max checks
; =================================================

(define-fun aux_ok () Bool
  (and
""" + "\n".join(checks) + """
  )
)
"""


def equivalence_check():
    return """
; =================================================
; Equivalence check
; SAT   -> baseline and auxlemma differ
; UNSAT -> equivalent
; =================================================

(assert (not (= baseline_ok aux_ok)))
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
        auxlemma_property(m),
        equivalence_check()
    ])

    Path(OUT_FILE).write_text(output, encoding="utf-8")

    print(f"Generated: {OUT_FILE}")
    print(f"m = {m}")
    print("Expected Z3 result: unsat")


if __name__ == "__main__":
    main()