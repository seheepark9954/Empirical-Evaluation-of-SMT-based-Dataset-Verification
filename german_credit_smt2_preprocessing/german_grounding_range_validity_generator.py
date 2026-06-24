# gen_local_range_unrolled_batch.py
# Generates unrolled SMT-LIB assertions for local range validity
# m = 100, 200, ..., 1000

col = 1           # credit_duration column
lower = 0
upper = 600

for m in range(100, 1001, 100):
    out_file = f"{m}_loop-like.smt2"

    with open(out_file, "w") as f:
        f.write("; ======================================\n")
        f.write(f"; Unrolled local range validity (m={m})\n")
        f.write("; Property: 0 <= credit_duration < 600\n")
        f.write("; ======================================\n\n")

        f.write("(assert\n")
        f.write("  (and\n")

        for i in range(m):
            f.write(
                f"    (and (>= (select (select D {i}) {col}) {lower}) "
                f"(< (select (select D {i}) {col}) {upper}))\n"
            )

        f.write("  )\n")
        f.write(")\n")

    print(f"✅ Generated: {out_file}")



