# gen_local_minmax_auxlemma.py
# Auxiliary-lemma encoding for local min-max normalized validity
#
# Portuguese Bank Dataset (normalized, Real)
#
# Assumptions:
# - min, max already defined in input SMT
# - Column index = 0
# - Removes quantified exists-spec
# - Ensures exactly ONE (check-sat)

import os

COL = 0  # normalized duration column

IN_PATTERN = "{m}.smt2"
OUT_PATTERN = "{m}_auxlemma.smt2"


def cut_old_spec(lines: list[str]) -> list[str]:
    """
    Remove:
    - quantified min-max specification (exists ...)
    - any existing (check-sat)
    """
    kept = []
    skipping = False
    paren_depth = 0

    for line in lines:
        if "(assert" in line and "exists" in line:
            skipping = True
            paren_depth = line.count("(") - line.count(")")
            continue

        if skipping:
            paren_depth += line.count("(") - line.count(")")
            if paren_depth <= 0:
                skipping = False
            continue

        if "(check-sat)" in line:
            continue

        kept.append(line)

    return kept


def emit_auxlemma_block(m: int) -> str:
    buf = []
    buf.append("\n; ===== auxiliary lemma: local min-max validity =====\n")

    buf.append("(assert")
    buf.append("  (and")
    for i in range(m):
        buf.append(
            f"    (and (>= (select (select D {i}) {COL}) min)"
            f" (<= (select (select D {i}) {COL}) max))"
        )
    buf.append("  )")
    buf.append(")")
    buf.append("\n(check-sat)")
    buf.append("; =================================================\n")

    return "\n".join(buf)


def main():
    for m in range(100, 1001, 100):
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"⚠️ Missing input: {in_file}")
            continue

        with open(in_file, "r") as f:
            lines = f.readlines()

        kept = cut_old_spec(lines)

        # Safety: ensure m exists
        if not any("(define-fun m" in ln for ln in kept):
            kept.append(f"(define-fun m () Int {m})\n")

        with open(out_file, "w") as f:
            f.writelines(kept)
            if kept and not kept[-1].endswith("\n"):
                f.write("\n")
            f.write(emit_auxlemma_block(m))

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()