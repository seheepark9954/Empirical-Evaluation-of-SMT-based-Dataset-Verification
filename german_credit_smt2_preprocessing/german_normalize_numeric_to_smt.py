import csv

# =========================
# CONFIG
# =========================
INPUT_CSV = "german_numeric.csv"

N = 100                         # Number of rows to use
OUT_SMT = f"{N}_german_numeric_norm.smt2"

NUMERIC_COLS = [1]              # Columns to normalize
# 1 : Credit duration (months)
# =========================

# -------------------------
# 1) Read CSV (numeric columns only)
# -------------------------
rows = []
with open(INPUT_CSV, newline="") as f:
    reader = csv.reader(f)
    for i, row in enumerate(reader):
        if i >= N:
            break
        rows.append([float(row[j]) for j in NUMERIC_COLS])

m = len(rows)
n = len(NUMERIC_COLS)

# -------------------------
# 2) Compute Min–Max
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
with open(OUT_SMT, "w") as f:
    f.write("; Normalized German Credit (numeric features only)\n")
    f.write("; Min-Max scaled to [-1, 1]\n\n")

    f.write("(set-logic QF_AUFLIRA)\n\n")

    f.write(f"(define-fun m () Int {m})\n")
    f.write(f"(define-fun n () Int {n})\n\n")

    f.write("(declare-const D (Array Int (Array Int Real)))\n\n")

    # Row constructor (nested store)
    args = " ".join([f"(x{j} Real)" for j in range(n)])
    f.write(f"(define-fun row{n} ({args}) (Array Int Real)\n")

    # Initialize constant array
    indent = "  "
    f.write(f"{indent}")

    expr = f"((as const (Array Int Real)) 0.0)"
    for j in range(n):
        expr = f"(store {expr} {j} x{j})"

    f.write(expr + "\n")
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