import csv

INPUT_CSV = "bank-full.csv"
DELIMITER = ";"

TARGET_COL = 11   # duration

rows = []

with open(INPUT_CSV, newline="", encoding="utf-8") as f:
    reader = csv.reader(f, delimiter=DELIMITER)

    next(reader)  # skip header

    for row in reader:
        rows.append(row)

for N in range(100, 1001, 100):

    values = [int(row[TARGET_COL]) for row in rows[:N]]

    out_file = f"{N}.smt2"

    with open(out_file, "w") as f:

        f.write("(set-logic ALL)\n")
        f.write(f"; rows (m) = {N}\n")
        f.write("; cols (n) = 1\n")

        f.write("(declare-const D (Array Int (Array Int Int)))\n")
        f.write(f"(define-fun m () Int {N})\n")
        f.write("(define-fun n () Int 1)\n\n")

        f.write("(define-fun row1 ((x0 Int)) (Array Int Int)\n")
        f.write("  (store ((as const (Array Int Int)) 0) 0 x0)\n")
        f.write(")\n\n")

        for i, v in enumerate(values):
            f.write(f"(assert (= (select D {i}) (row1 {v})))\n")

    print(f"Saved {out_file}")