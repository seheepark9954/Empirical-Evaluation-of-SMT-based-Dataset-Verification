# gen_minmax_equiv_quantifier_vs_auxlemma.py
# Generates an SMT2 file that checks equivalence between:
#   - Quantifier-based Min-Max property (Q)
#   - Aux-lemma (expanded) Min-Max property (A)
#
# Output is UNSAT iff Q and A are equivalent.

import os

IN_PATTERN = "{m}.smt2"
OUT_PATTERN = "{m}_quantifier_equals_auxlemma_minmax.smt2"


def strip_check_sat(lines: list[str]) -> list[str]:
    """Remove any existing (check-sat) / (get-model) lines from input."""
    kept = []
    for ln in lines:
        if "(check-sat)" in ln:
            continue
        if "(get-model)" in ln:
            continue
        kept.append(ln)
    return kept


def emit_equiv_block(m: int) -> str:
    buf = []
    buf.append("\n; =========================")
    buf.append("; Min-Max equivalence check: Quantifier vs Aux-lemma")
    buf.append("; Result:")
    buf.append(";   unsat => equivalent")
    buf.append(";   sat   => not equivalent (model is a counterexample)")
    buf.append("; =========================\n")

    buf.append("(define-fun min () Real -1.0)")
    buf.append("(define-fun max () Real  1.0)\n")

    buf.append("; -------------------------")
    buf.append("; Quantifier-based property")
    buf.append("; -------------------------")
    buf.append("(define-fun Q () Bool")
    buf.append("  (not")
    buf.append("    (exists ((i Int))")
    buf.append("      (and")
    buf.append("        (>= i 0)")
    buf.append("        (< i m)")
    buf.append("        (or")
    buf.append("          (< (select (select D i) 0) min)")
    buf.append("          (> (select (select D i) 0) max)")
    buf.append("        )")
    buf.append("      )")
    buf.append("    )")
    buf.append("  )")
    buf.append(")\n")

    buf.append("; -------------------------")
    buf.append("; Aux-lemma definitions")
    buf.append("; -------------------------")
    for i in range(m):
        buf.append(
            f"(define-fun ok{i} () Bool "
            f"(and (>= (select (select D {i}) 0) min) "
            f"(<= (select (select D {i}) 0) max)))"
        )
    buf.append("")

    buf.append("; Combine all lemmas")
    buf.append("(define-fun A () Bool")
    buf.append("  (and")
    for i in range(m):
        buf.append(f"    ok{i}")
    buf.append("  )")
    buf.append(")\n")

    buf.append("; -------------------------")
    buf.append("; Equivalence check (XOR)")
    buf.append("; -------------------------")
    buf.append("(assert (xor Q A))")
    buf.append("(check-sat)")
    buf.append("(get-model)\n")

    return "\n".join(buf)


def main():
    m = 1000  # fixed as requested

    in_file = IN_PATTERN.format(m=m)
    out_file = OUT_PATTERN.format(m=m)

    if not os.path.exists(in_file):
        raise FileNotFoundError(f"Missing input file: {in_file}")

    with open(in_file, "r", encoding="utf-8") as f:
        lines = f.readlines()

    kept = strip_check_sat(lines)

    with open(out_file, "w", encoding="utf-8") as f:
        f.writelines(kept)
        if kept and not kept[-1].endswith("\n"):
            f.write("\n")
        f.write(emit_equiv_block(m))

    print(f"Generated: {out_file}")


if __name__ == "__main__":
    main()