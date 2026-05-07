from pathlib import Path
import re

IN_FILE = "10000.smt2"
OUT_FILE = "quantifier_equals_looplike.smt2"

# Portuguese dataset:
# 16 features + 1 label = 17 columns
# If your range validity checks only feature columns, change this to 16.
N_COLS = 17

MIN_VAL = 0
MAX_VAL = 1


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
        if s.startswith("(define-fun max"):
            break
        if s.startswith("(define-fun-rec"):
            break
        if s.startswith("(check-sat"):
            break

        kept.append(line)

    return "\n".join(kept)


def baseline_property():
    return f"""
; =================================================
; Baseline quantified range validity
; =================================================

(define-fun baseline_ok () Bool
  (not
    (exists ((i Int) (j Int))
      (and
        (>= i 0)
        (< i m)

        (>= j 0)
        (< j {N_COLS})

        (or
          (< (select (select D i) j) {MIN_VAL})
          (> (select (select D i) j) {MAX_VAL})
        )
      )
    )
  )
)
"""


def looplike_property(m):
    clauses = []

    for i in range(m):
        for j in range(N_COLS):
            clauses.append(
                f"    (and "
                f"(>= (select (select D {i}) {j}) {MIN_VAL}) "
                f"(<= (select (select D {i}) {j}) {MAX_VAL}))"
            )

    return """
; =================================================
; Loop-like range validity
; =================================================

(define-fun looplike_ok () Bool
  (and
""" + "\n".join(clauses) + """
  )
)
"""


def equivalence_check():
    return """
; =================================================
; Equivalence check
; SAT   -> baseline and loop-like differ
; UNSAT -> equivalent
; =================================================

(assert (not (= baseline_ok looplike_ok)))
(check-sat)
"""


def main():
    text = read_file(IN_FILE)
    m = extract_m(text)
    dataset_block = extract_dataset_block(text)

    output = "\n\n".join([
        "(set-logic ALL)",
        dataset_block,
        baseline_property(),
        looplike_property(m),
        equivalence_check()
    ])

    Path(OUT_FILE).write_text(output, encoding="utf-8")

    print(f"Generated: {OUT_FILE}")
    print(f"m = {m}")
    print(f"N_COLS = {N_COLS}")
    print("Expected Z3 result: unsat")


if __name__ == "__main__":
    main()