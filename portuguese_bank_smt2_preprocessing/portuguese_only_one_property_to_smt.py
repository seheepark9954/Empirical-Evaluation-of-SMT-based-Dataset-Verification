import csv

# =========================
# CONFIG
# =========================
INPUT_CSV = "bank-full.csv"   # Portuguese bank dataset
DELIMITER = ";"               # bank-full.csv uses ';'
N = 40000                       # number of rows to extract
OUT_SMT = f"{N}.smt2"

# Encoding: yes -> 1, no -> 0
LABEL_MAP = {
    "yes": 1,
    "no": 0
}

labels = []

# =========================
# 1) Read CSV and extract labels
# =========================
with open(INPUT_CSV, newline="", encoding="utf-8") as f:
    reader = csv.reader(f, delimiter=DELIMITER)
    header = next(reader)  # skip header

    for i, row in enumerate(reader):
        if i >= N:
            break
        raw_label = row[-1].strip().lower()   # last column is y
        labels.append(LABEL_MAP[raw_label])

# =========================
# 2) Write SMT-LIB2 (labels only)
# =========================
with open(OUT_SMT, "w", encoding="utf-8") as f:
    f.write("; Label array extracted from bank-full.csv\n")
    f.write("; Encoding: yes -> 1, no -> 0\n\n")

    f.write("(declare-const O (Array Int Int))\n")
    f.write(f"(define-fun m () Int {len(labels)})\n\n")

    for i, label in enumerate(labels):
        f.write(f"(assert (= (select O {i}) {label}))\n")

    f.write("\n(check-sat)\n")

print(f"✅ Saved {len(labels)} labels to {OUT_SMT}")