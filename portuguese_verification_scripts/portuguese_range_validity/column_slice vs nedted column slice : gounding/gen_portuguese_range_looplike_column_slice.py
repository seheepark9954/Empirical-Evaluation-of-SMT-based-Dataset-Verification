# gen_portuguese_range_looplike_flat_column_slice.py
# Generates loop-like range-validity SMT-LIB files
# for Portuguese Bank dataset using flat column-slice encoding.
#
# Encoding:
#   O : Array Int Int
#
# Property:
#   0 <= O[i] < 5000
#
# Target column:
#   duration, column index 11 in bank-full.csv

import csv
import os

INPUT_CSV = "bank-full.csv"
DELIMITER = ";"

COL = 11          # duration column
LOWER = 0
UPPER = 5000

# Use the same workload sizes as your Portuguese experiments
M_VALUES = [
    100, 200, 300, 400, 500, 600, 700, 800, 900, 1000,
    2000, 3000, 4000, 5000, 10000, 20000, 30000, 40000
]

OUT_PATTERN = "{m}_grounding_column_slice.smt2"


def read_duration_values(input_csv: str) -> list[int]:
    """Read the duration column from bank-full.csv."""
    values = []

    with open(input_csv, newline="", encoding="utf-8") as f:
        reader = csv.reader(f, delimiter=DELIMITER)
        header = next(reader)  # skip header

        for row in reader:
            values.append(int(row[COL]))

    return values


def emit_data_encoding(values: list[int], m: int) -> str:
    """Emit flat array encoding O : Array Int Int."""
    buf = []

    buf.append("; Portuguese Bank dataset")
    buf.append("; Flat column-slice encoding")
    buf.append("; Column: duration")
    buf.append("")
    buf.append("(set-logic ALL)")
    buf.append("")
    buf.append("(declare-const O (Array Int Int))")
    buf.append(f"(define-fun m () Int {m})")
    buf.append("")

    for i in range(m):
        buf.append(f"(assert (= (select O {i}) {values[i]}))")

    return "\n".join(buf)


def emit_looplike_property(m: int) -> str:
    """Emit loop-like unrolled range-validity property."""
    buf = []

    buf.append("")
    buf.append("; ======================================")
    buf.append(f"; Loop-like local range validity (m={m})")
    buf.append("; Encoding: flat column slice")
    buf.append(f"; Property: {LOWER} <= duration < {UPPER}")
    buf.append("; ======================================")
    buf.append("")
    buf.append("(assert")
    buf.append("  (and")

    for i in range(m):
        buf.append(
            f"    (and (>= (select O {i}) {LOWER}) "
            f"(< (select O {i}) {UPPER}))"
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
            f.write(emit_looplike_property(m))
            f.write("\n")

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()