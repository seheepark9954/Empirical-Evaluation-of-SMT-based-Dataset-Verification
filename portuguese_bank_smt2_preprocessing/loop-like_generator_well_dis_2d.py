# gen_welldistributed_2d_looplike.py
# - input:  {m}_loop-like_2d_norm_age_balanced.smt2  (data-only + check-sat)
# - output: {m}_looplike_2d_welldis.smt2
# - loop-like encoding (no quantifiers, no recursion)
# - grid-based coverage in 2D

import os

# ✅ input filename pattern (your exact file name style)
IN_PATTERN = "{m}_data_2d_norm_age_balance.smt2"
OUT_PATTERN = "{m}_looplike_2d_norm_age_balance.smt2"

# 2D grid (Cartesian product)
GRID_1D = [-1.0, -0.5, 0.0, 0.5, 1.0]

# distance threshold (use squared distance)
D2_VALUE = 8.0  # if d=2 then d^2=4.0


def strip_check_sat(lines: list[str]) -> list[str]:
    """Remove sany existing (check-sat) lines."""
    return [ln for ln in lines if "(check-sat)" not in ln]


def emit_looplike_2d_block(m: int) -> str:
    grid_points = [(a, b) for a in GRID_1D for b in GRID_1D]  # 25 points

    buf = []
    buf.append("\n; =====================")
    buf.append("; 2D Well-distributedness (Loop-like, grid-based)")
    buf.append("; Columns: 0(age), 1(balance) in this normalized 2D file")
    buf.append("; Meaning: every grid point has at least one nearby data point")
    buf.append("; =====================\n")

    buf.append(f"(define-fun d2 () Real {D2_VALUE})\n")

    # helper: squared distance in 2D
    buf.append("(define-fun sqdist2 ((p0 Real) (p1 Real) (i Int)) Real")
    buf.append("  (+")
    buf.append("    (* (- p0 (select (select D i) 0)) (- p0 (select (select D i) 0)))")
    buf.append("    (* (- p1 (select (select D i) 1)) (- p1 (select (select D i) 1)))")
    buf.append("  )")
    buf.append(")\n")

    # big AND over grid points, each is OR over data points
    buf.append("(assert")
    buf.append("  (and")

    for (p0, p1) in grid_points:
        buf.append("    (or")
        for i in range(m):
            buf.append(f"      (<= (sqdist2 {p0} {p1} {i}) d2)")
        buf.append("    )")

    buf.append("  )")
    buf.append(")\n")

    buf.append("(check-sat)\n")
    return "\n".join(buf)


def main():
    for m in [100, 500, 1000, 5000, 10000,40000]:  # 필요하면 [100, 500, 1000, 5000, 10000] 이렇게 확장
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"⚠️ Missing input: {in_file}")
            continue

        with open(in_file, "r", encoding="utf-8") as f:
            lines = f.readlines()

        kept = strip_check_sat(lines)

        with open(out_file, "w", encoding="utf-8") as f:
            f.writelines(kept)
            if kept and not kept[-1].endswith("\n"):
                f.write("\n")
            f.write(emit_looplike_2d_block(m))

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()