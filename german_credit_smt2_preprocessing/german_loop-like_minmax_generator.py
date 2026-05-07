


# gen_local_minmax_unrolled_batch.py
# Generates loop-like (unrolled) SMT-LIB assertions
# for local min–max normalized credit_duration
# m = 100, 200, ..., 1000

col = 0          # normalized credit_duration column
lower = -1.0
upper = 1.0

for m in range(100, 1001, 100):
    out_file = f"loop_like_minmax_{m}.smt2"

    with open(out_file, "w") as f:
        f.write("; ======================================\n")
        f.write(f"; Loop-like local min–max validity (m={m})\n")
        f.write("; Property: -1.0 <= credit_duration <= 1.0\n")
        f.write("; Encoding: unrolled conjunction\n")
        f.write("; ======================================\n\n")

        f.write("(assert\n")
        f.write("  (and\n")

        for i in range(m):
            f.write(
                f"    (and (>= (select (select D {i}) {col}) {lower}) "
                f"(<= (select (select D {i}) {col}) {upper}))\n"
            )

        f.write("  )\n")
        f.write(")\n")

    print(f"✅ Generated: {out_file}")
    
    