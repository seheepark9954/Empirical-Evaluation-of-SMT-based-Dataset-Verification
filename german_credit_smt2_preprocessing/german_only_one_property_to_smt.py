import csv

N = 100  # the number of row i want to convert
out_file = f"{N}_labels_only.smt2"

labels = [1]

with open("german_numeric.csv", newline="") as f:
    reader = csv.reader(f)
    for i, row in enumerate(reader):
        if i >= N:
            break
        labels.append(int(row[-1]))      # where the target(property) places

with open(out_file, "w") as f:
    f.write("; label array extracted from german_numeric.csv\n")
    f.write("(declare-const O (Array Int Int))\n")
    f.write(f"(define-fun m () Int {len(labels)})\n\n")

    for i, label in enumerate(labels):
        f.write(f"(assert (= (select O {i}) {label}))\n")

print(f"✅ Saved {len(labels)} labels to {out_file}")