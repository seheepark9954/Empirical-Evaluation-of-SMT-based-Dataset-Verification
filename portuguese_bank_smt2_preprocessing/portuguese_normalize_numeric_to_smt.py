import csv
# ; Feature order:
# ;   0: age
# ;   1: job
# ;   2: marital
# ;   3: education
# ;   4: default
# ;   5: balance
# ;   6: housing
# ;   7: loan
# ;   8: contact
# ;   9: day
# ;   10: month
# ;   11: duration
# ;   12: campaign
# ;   13: pdays
# ;   14: previous
# ;   15: poutcome
# ;   16: y
# =========================
# CONFIG
# =========================
INPUT_CSV = "bank-full.csv"

N = 0000                          # Number of rows to use
OUT_SMT = f"{N}.smt2"

DELIMITER = ";"                  # bank-full.csv uses semicolon delimiter
HAS_HEADER = True

# Numeric columns to normalize
NUMERIC_COLS = [11]
# 11 : duration (last contact duration, seconds)
# =========================

# -------------------------
# 1) Read CSV (numeric columns only)
# -------------------------
rows = []

with open(INPUT_CSV, newline="", encoding="utf-8") as f:
    reader = csv.reader(f, delimiter=DELIMITER)

    if HAS_HEADER:
        next(reader)  # Skip header

    for i, row in enumerate(reader):
        if i >= N:
            break
        rows.append([float(row[j]) for j in NUMERIC_COLS])

m = len(rows)
n = len(NUMERIC_COLS)

# -------------------------
# 2) Compute Min–Max (based on selected N rows only)
# -------------------------
mins = [min(col) for col in zip(*rows)]
maxs = [max(col) for col in zip(*rows)]

def minmax_norm(x, mn, mx):
    if mx == mn:
        return 0.0
    return 2 * (x - mn) / (mx - mn) - 1

norm_rows = [
    [minmax_norm(x, mins[j], maxs[j]) for j, x in enumerate(row)]
    for row in rows
]

# -------------------------
# 3) Write SMT-LIB2 output (nested store)
# -------------------------
with open(OUT_SMT, "w", encoding="utf-8") as f:
    f.write("; Normalized Portuguese Bank Dataset (numeric features only)\n")
    f.write("; Min-Max scaled to [-1, 1]\n")
    f.write("; Numeric column: duration (index 11)\n\n")

    f.write("(set-logic QF_AUFLIRA)\n\n")

    f.write(f"(define-fun m () Int {m})\n")
    f.write(f"(define-fun n () Int {n})\n\n")

    f.write("(declare-const D (Array Int (Array Int Real)))\n\n")

    # Row constructor (nested store)
    args = " ".join([f"(x{j} Real)" for j in range(n)])
    f.write(f"(define-fun row{n} ({args}) (Array Int Real)\n")

    expr = "((as const (Array Int Real)) 0.0)"
    for j in range(n):
        expr = f"(store {expr} {j} x{j})"

    f.write(f"  {expr}\n")
    f.write(")\n\n")

    # Dataset rows
    for i, row in enumerate(norm_rows):
        values = " ".join(f"{v:.6f}" for v in row)
        f.write(f"(assert (= (select D {i}) (row{n} {values})))\n")

    f.write("\n(check-sat)\n")

print("✅ SMT-LIB2 generation complete")
print(f" - Rows (m): {m}")
print(f" - Numeric features (n): {n}")
print(f" - Output: {OUT_SMT}")