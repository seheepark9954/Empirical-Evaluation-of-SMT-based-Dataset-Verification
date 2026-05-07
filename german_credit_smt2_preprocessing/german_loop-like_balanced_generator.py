# gen_global_balanced_looplike.py
# Generates loop-like SMT-LIB constraints for global balancedness
# threshold is precomputed as a constant to avoid nonlinear arithmetic

labels = [1, 2]
l = 2
B = 2

for m in range(100, 1001, 100):
    threshold = m // (l * B)
    out_file = f"global_balanced_looplike_{m}.smt2"

    with open(out_file, "w") as f:
        f.write("; ======================================\n")
        f.write("; Global balancedness (loop-like encoding)\n")
        f.write(f"; m = {m}, l = {l}, B = {B}, threshold = {threshold}\n")
        f.write("; ======================================\n\n")


        
        f.write(f"(define-fun threshold () Int {threshold})\n\n")

        # count_label_k definitions
        for lbl in labels:
            f.write(f"(define-fun count_label_{lbl} () Int\n")
            f.write("  (+\n")
            for i in range(m):
                f.write(f"    (ite (= (select O {i}) {lbl}) 1 0)\n")
            f.write("  )\n")
            f.write(")\n\n")

        # balancedness assertion
        f.write("(assert\n")
        f.write("  (and\n")
        for lbl in labels:
            f.write(f"    (>= count_label_{lbl} threshold)\n")
        f.write("  )\n")
        f.write(")\n\n")

        f.write("(check-sat)\n")

    print(f"✅ Generated: {out_file}")