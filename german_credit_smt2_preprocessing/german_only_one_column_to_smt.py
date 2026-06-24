import csv
from pathlib import Path

INPUT_FILE = "german_numeric.csv"
TARGET_COL = 1  # credit duration
OUTPUT_DIR = Path("duration_original")

OUTPUT_DIR.mkdir(exist_ok=True)

# Read all rows once
rows = []

with open(INPUT_FILE, newline="") as f:
    reader = csv.reader(f)
    for row in reader:
        rows.append(row)

for N in range(100, 1001, 100):
    values = [int(row[TARGET_COL]) for row in rows[:N]]

    out_file = OUTPUT_DIR / f"{N}_duration_original.smt2"

    with open(out_file, "w") as f:
        f.write("(set-logic ALL)\n")
        f.write(f"; rows (m) = {len(values)}\n")
        f.write("; cols (n) = 1\n")
        f.write("(declare-const D (Array Int (Array Int Int)))\n")
        f.write(f"(define-fun m () Int {len(values)})\n")
        f.write("(define-fun n () Int 1)\n\n")

        f.write("(define-fun row1 ((x0 Int)) (Array Int Int)\n")
        f.write("  (store ((as const (Array Int Int)) 0) 0 x0)\n")
        f.write(")\n\n")

        for i, v in enumerate(values):
            f.write(f"(assert (= (select D {i}) (row1 {v})))\n")

    print(f"Saved {out_file}")