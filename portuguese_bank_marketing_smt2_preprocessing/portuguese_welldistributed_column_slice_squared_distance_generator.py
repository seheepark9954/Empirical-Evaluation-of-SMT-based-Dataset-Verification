# Converts nested column-slice squared-distance well-distributedness files
# into column-slice encoding.
#
# Input encoding:
#   D : Array Int (Array Int Real)
#   (assert (= (select D i) (row1 value)))
#
# Output encoding:
#   O : Array Int Real
#   (assert (= (select O i) value))
#
# Property:
#   squared-distance well-distributedness
#   using (select O i)
#
# The verification logic is kept as close as possible to the original file.
# Only the data encoding is changed.

import os
import re

M_VALUES = [
    100, 200, 300, 400, 500, 600, 700, 800, 900, 1000,
    2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 20000, 30000, 40000
]

IN_PATTERN = "{m}_squared_distance.smt2"
OUT_PATTERN = "{m}_squared_distance_column_slice.smt2"

ROW1_PATTERN = re.compile(
    r"\(assert\s+\(=\s+\(select\s+D\s+(\d+)\)\s+\(row1\s+([+-]?\d+(?:\.\d+)?)\)\)\)"
)


def extract_values(lines: list[str]) -> dict[int, str]:
    """Extract row1 values from nested column-slice encoding."""
    values = {}

    for line in lines:
        match = ROW1_PATTERN.search(line.strip())
        if match:
            idx = int(match.group(1))
            val = match.group(2)
            values[idx] = val

    return values


def emit_column_slice_data(values: dict[int, str], m: int) -> str:
    """Emit O : Array Int Real column-slice encoding."""
    buf = []

    buf.append("(set-logic ALL)")
    buf.append("")
    buf.append("; Normalized Portuguese Bank Dataset")
    buf.append("; Column-slice encoding")
    buf.append("; Numeric column: duration (index 11)")
    buf.append("")
    buf.append(f"(define-fun m () Int {m})")
    buf.append("(define-fun n () Int 1)")
    buf.append("")
    buf.append("(declare-const O (Array Int Real))")
    buf.append("")

    for i in range(m):
        buf.append(f"(assert (= (select O {i}) {values[i]}))")

    return "\n".join(buf)


def emit_squared_distance_property() -> str:
    """Emit squared-distance well-distributedness property using O[i]."""
    return """
; =====================
; squared-distance well-distributedness (1D, recursive squared distance)
; column-slice encoding
; =====================

; d^2: Real (squared distance threshold)
(define-fun d2 () Real 4.0)

; 1D squared diff sum
(define-fun-rec squared-diff-sum-1d ((p Real) (x Real) (size Int)) Real
  (ite (< size 0)
       0.0
       (+ (* (- p x) (- p x))
          (squared-diff-sum-1d p x (- size 1)))
  )
)

(assert
  (not
    (exists ((p Real))
      (and
        (>= p -1.0)
        (<= p  1.0)
        (forall ((i Int))
          (=>
            (and (>= i 0) (< i m))
            (> (squared-diff-sum-1d p (select O i) (- n 1)) d2)
          )
        )
      )
    )
  )
)

(check-sat)
"""


def main():
    for m in M_VALUES:
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"⚠️ Missing input: {in_file}")
            continue

        with open(in_file, "r", encoding="utf-8") as f:
            lines = f.readlines()

        values = extract_values(lines)

        if len(values) < m:
            print(f"⚠️ Skipping {in_file}: extracted {len(values)} values, expected {m}")
            continue

        with open(out_file, "w", encoding="utf-8") as f:
            f.write(emit_column_slice_data(values, m))
            f.write("\n\n")
            f.write(emit_squared_distance_property())

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()