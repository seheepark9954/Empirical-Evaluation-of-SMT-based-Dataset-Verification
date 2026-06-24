# gen_portuguese_range_grounding_nested_column_slice.py
# Generates grounding-style range-validity SMT-LIB files
# for the Portuguese Bank dataset using nested column-slice encoding.
#
# Encoding:
#   D : Array Int (Array Int Int)
#   n = 1
#
# Property:
#   0 <= D[i][0] < 5000
#
# Target column:
#   duration, column index 11 in bank-full.csv

import csv
import os

INPUT_CSV = "bank-full.csv"
DELIMITER = ";"

COL = 11
LOWER = 0
UPPER = 5000

M_VALUES = [
    100, 200, 300, 400, 500, 600, 700, 800, 900, 1000,
    2000, 3000, 4000, 5000, 10000, 20000, 30000, 40000
]

OUT_PATTERN = "{m}_grounding_nested_column_slice.smt2"


def read_duration_values(input_csv: str) -> list[int]:
    """Read the duration column from bank-full.csv."""
    values = []

    with open(input_csv, newline="", encoding="utf-8") as f:
        reader = csv.reader(f, delimiter=DELIMITER)
        next(reader)  # Skip header

        for row in reader:
            values.append(int(row[COL]))

    return values


def emit_data_encoding(values: list[int], m: int) -> str:
    """Emit nested column-slice encoding D : Array Int (Array Int Int)."""
    buf = []

    buf.append("; Portuguese Bank dataset")
    buf.append("; Nested column-slice encoding")
    buf.append("; Column: duration")
    buf.append("")
    buf.append("(set-logic ALL)")
    buf.append("")
    buf.append("(declare-const D (Array Int (Array Int Int)))")
    buf.append(f"(define-fun m () Int {m})")
    buf.append("(define-fun n () Int 1)")
    buf.append("")
    buf.append("(define-fun row1 ((x0 Int)) (Array Int Int)")
    buf.append("  (store ((as const (Array Int Int)) 0) 0 x0)")
    buf.append(")")
    buf.append("")

    for i in range(m):
        buf.append(f"(assert (= (select D {i}) (row1 {values[i]})))")

    return "\n".join(buf)


def emit_grounding_property(m: int) -> str:
    """Emit grounding-style unrolled range-validity property."""
    buf = []

    buf.append("")
    buf.append("; ======================================")
    buf.append(f"; Grounding-style local range validity (m={m})")
    buf.append("; Encoding: nested column slice")
    buf.append(f"; Property: {LOWER} <= duration < {UPPER}")
    buf.append("; ======================================")
    buf.append("")
    buf.append("(assert")
    buf.append("  (and")

    for i in range(m):
        buf.append(
            f"    (and (>= (select (select D {i}) 0) {LOWER}) "
            f"(< (select (select D {i}) 0) {UPPER}))"
        )

    buf.append("  )")
    buf.append(")")
    buf.append("")
    buf.append("(check-sat)")

    return "\n".join(buf)


def main():
    if not os.path.exists(INPUT_CSV):
        raise FileNotFoundError(f"Missing input CSV: {INPUT_CSV}")

    values = read_duration_values(INPUT_CSV)

    for m in M_VALUES:
        if m > len(values):
            print(f"⚠️ Skipping m={m}: only {len(values)} rows available")
            continue

        out_file = OUT_PATTERN.format(m=m)

        with open(out_file, "w", encoding="utf-8") as f:
            f.write(emit_data_encoding(values, m))
            f.write("\n")
            f.write(emit_grounding_property(m))
            f.write("\n")

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()