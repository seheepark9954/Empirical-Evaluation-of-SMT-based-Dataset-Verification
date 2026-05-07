# gen_global_balanced_auxlemma_german.py
# Clean auxiliary-lemma encoding for global balancedness (German Credit)
#
# ASSUMPTIONS about input file:
# - Contains (declare-const O (Array Int Int))
# - Contains (define-fun m () Int <m>)
# - Contains label assertions: (assert (= (select O i) 1 or 2))
# - May or may not contain old balanced specification
#
# GUARANTEE:
# - No (set-logic ...) is inserted
# - Output SMT is structurally valid SMT-LIB 2

import os

# German Credit dataset
LABELS = [1, 2]
l = 2
B = 2

IN_PATTERN = "{m}.smt2"                 # input label-only file
OUT_PATTERN = "{m}_auxlemma.smt2"       # output file


def cut_old_spec(lines: list[str]) -> list[str]:
    """
    Remove everything starting from old balanced specification.
    We cut at the first occurrence of '(declare-const L'.
    """
    for idx, line in enumerate(lines):
        if "(declare-const L" in line:
            return lines[:idx]
    return lines


def emit_auxlemma_block(m: int) -> str:
    threshold = m // (l * B)  # constant threshold (matches original spec)

    def sum_def(label: int, name: str) -> str:
        buf = []
        buf.append(f"(define-fun {name} () Int")
        buf.append("  (+")
        for i in range(m):
            buf.append(f"    (ite (= (select O {i}) {label}) 1 0)")
        buf.append("  )")
        buf.append(")")
        return "\n".join(buf)

    buf = []
    buf.append("\n; ===== auxiliary lemma: global balancedness (German) =====\n")
    buf.append(f"(define-fun threshold () Int {threshold})\n")

    buf.append("(declare-const c1 Int)")
    buf.append("(declare-const c2 Int)\n")

    buf.append(sum_def(1, "sum1"))
    buf.append("")
    buf.append(sum_def(2, "sum2"))
    buf.append("")

    buf.append("(assert (= c1 sum1))")
    buf.append("(assert (= c2 sum2))\n")

    buf.append("(assert (and (<= 0 c1) (<= c1 m)))")
    buf.append("(assert (and (<= 0 c2) (<= c2 m)))\n")

    # Lemma: labels are in {1,2}
    buf.append("(assert")
    buf.append("  (and")
    for i in range(m):
        buf.append(
            f"    (or (= (select O {i}) 1) (= (select O {i}) 2))"
        )
    buf.append("  )")
    buf.append(")\n")

    buf.append("(assert (= (+ c1 c2) m))\n")

    buf.append("(assert (and (>= c1 threshold) (>= c2 threshold)))")
    buf.append("(check-sat)")
    buf.append("; ========================================================\n")

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

        # Safety: ensure m is defined
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