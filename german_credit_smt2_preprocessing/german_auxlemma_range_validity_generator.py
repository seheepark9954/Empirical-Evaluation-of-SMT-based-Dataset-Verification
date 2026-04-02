# gen_local_range_auxlemma_german.py
# Auxiliary-lemma encoding for local range validity (German Credit: credit_duration)
#
# Key difference from loop-like:
# - Introduces symbolic bounds (duration_min, duration_max) via define-fun
# - Uses them inside per-row lemmas instead of literal values
#
# ASSUMPTIONS about input file:
# - Contains (declare-const D (Array Int (Array Int Int)))
# - Contains (define-fun m () Int <m>)
# - Contains row assertions for the German Credit dataset (25 columns)

import os

# German Credit dataset: credit_duration column
COL = 1
LOWER_VAL = 0
UPPER_VAL = 600

IN_PATTERN = "{m}.smt2"
OUT_PATTERN = "{m}_auxlemma.smt2"


def cut_old_spec(lines: list[str]) -> list[str]:
    """
    Remove old local-range specifications:
    - quantified forall blocks
    - existing auxiliary/loop-like blocks
    - existing check-sat
    """
    kept = []
    skipping = False
    depth = 0

    for line in lines:
        if "(assert" in line and ("forall" in line):
            skipping = True
            depth = line.count("(") - line.count(")")
            continue

        if skipping:
            depth += line.count("(") - line.count(")")
            if depth <= 0:
                skipping = False
            continue

        if "(check-sat)" in line:
            continue

        kept.append(line)

    return kept


def emit_auxlemma_block(m: int) -> str:
    buf = []
    buf.append("\n; ===== auxiliary lemma: local range validity (credit_duration) =====\n")

    # Symbolic bounds (key difference from loop-like encoding)
    buf.append(f"(define-fun duration_min () Int {LOWER_VAL})")
    buf.append(f"(define-fun duration_max () Int {UPPER_VAL})\n")

    buf.append("(assert")
    buf.append("  (and")
    for i in range(m):
        buf.append(
            f"    (and (>= (select (select D {i}) {COL}) duration_min) "
            f"(<  (select (select D {i}) {COL}) duration_max))"
        )
    buf.append("  )")
    buf.append(")")
    buf.append("\n(check-sat)")
    buf.append("; ===================================================================\n")

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

        # Safety: ensure m definition exists
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