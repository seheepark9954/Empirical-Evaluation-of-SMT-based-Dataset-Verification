# gen_welldistributed_2d_auxlemma.py
# Converts 2D normalized dataset into AUX-LEMMA well-distributedness specification
#
# INPUT :  {m}_data_2d_norm_age_balance.smt2
# OUTPUT:  {m}_auxlemma_2d_norm_age_balance.smt2
#
# - no quantifiers
# - no recursion
# - grid-based auxiliary lemmas
# - uses sqdist2 helper function

import os

# =====================
# CONFIG
# =====================
IN_PATTERN = "{m}_data_2d_norm_age_balance.smt2"
OUT_PATTERN = "{m}_auxlemma_2d_norm_age_balance.smt2"

# grid for p = (age, balance)
GRID_1D = [-1.0, -0.5, 0.0, 0.5, 1.0]

D2_VALUE = 8.0   # squared distance threshold


# =====================
# UTIL
# =====================
def strip_old_spec_and_checksat(lines: list[str]) -> list[str]:
    """
    Remove:
    - old well-distributed / balanced blocks (if any)
    - existing (check-sat)
    """
    kept = []
    skipping = False
    depth = 0

    for line in lines:
        if "; well-distributed" in line or "; balanced" in line:
            skipping = True
            depth = 0
            continue

        if skipping:
            depth += line.count("(") - line.count(")")
            if depth <= 0 and ")" in line:
                skipping = False
            continue

        if "(check-sat)" in line:
            continue

        kept.append(line)

    return kept


# =====================
# AUX-LEMMA EMITTER
# =====================
def emit_auxlemma_block(m: int) -> str:
    grid_points = [(x, y) for x in GRID_1D for y in GRID_1D]

    buf = []
    buf.append("\n; =================================================")
    buf.append("; Auxiliary Lemma: 2D Well-distributedness")
    buf.append("; Dimensions: age (0), balance (1)")
    buf.append("; Grid-based, quantifier-free")
    buf.append("; =================================================\n")

    buf.append(f"(define-fun d2 () Real {D2_VALUE})\n")

    # squared distance helper
    buf.append("(define-fun sqdist2 ((p0 Real) (p1 Real) (i Int)) Real")
    buf.append("  (+")
    buf.append("    (* (- p0 (select (select D i) 0)) (- p0 (select (select D i) 0)))")
    buf.append("    (* (- p1 (select (select D i) 1)) (- p1 (select (select D i) 1)))")
    buf.append("  )")
    buf.append(")\n")

    # auxiliary lemmas
    for idx, (p0, p1) in enumerate(grid_points):
        buf.append(f"(define-fun close_p{idx} () Bool")
        buf.append("  (or")
        for i in range(m):
            buf.append(f"    (<= (sqdist2 {p0} {p1} {i}) d2)")
        buf.append("  )")
        buf.append(")\n")

    # final assertion
    buf.append("(assert")
    buf.append("  (and")
    for idx in range(len(grid_points)):
        buf.append(f"    close_p{idx}")
    buf.append("  )")
    buf.append(")\n")

    buf.append("(check-sat)\n")

    return "\n".join(buf)


# =====================
# MAIN
# =====================
def main():
    for m in [100, 500, 1000, 5000, 10000,40000]:   # 필요하면 [100, 500, 1000, 5000, 10000] 등으로 확장
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"⚠️ Missing input: {in_file}")
            continue

        with open(in_file, "r", encoding="utf-8") as f:
            lines = f.readlines()

        kept = strip_old_spec_and_checksat(lines)

        with open(out_file, "w", encoding="utf-8") as f:
            f.writelines(kept)
            if kept and not kept[-1].endswith("\n"):
                f.write("\n")
            f.write(emit_auxlemma_block(m))

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()