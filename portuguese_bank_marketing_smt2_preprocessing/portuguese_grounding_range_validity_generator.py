# gen_portuguese_local_range_looplike.py
# Robust loop-like generator for Portuguese Bank dataset
#
# Removes:
#   (assert (forall ...))
# even when forall is on a different line
#
# Inserts:
#   unrolled loop-like local range constraints
#   exactly ONE (check-sat)

import os

COL = 11
LOWER = 0
UPPER = 5000

IN_PATTERN = "{m}_baseline.smt2"
OUT_PATTERN = "{m}_grounding.smt2"


def cut_forall_asserts_and_checksat(lines: list[str]) -> list[str]:
    """
    Remove:
    - any assert block that CONTAINS a forall
    - any existing (check-sat)
    """
    kept = []

    inside_assert = False
    assert_buf = []
    paren_depth = 0
    contains_forall = False

    for line in lines:
        # Remove all existing check-sat
        if "(check-sat)" in line:
            continue

        # Start of an assert
        if not inside_assert and "(assert" in line:
            inside_assert = True
            assert_buf = [line]
            paren_depth = line.count("(") - line.count(")")
            contains_forall = "(forall" in line
            continue

        if inside_assert:
            assert_buf.append(line)
            paren_depth += line.count("(") - line.count(")")
            if "(forall" in line:
                contains_forall = True

            # End of this assert block
            if paren_depth <= 0:
                inside_assert = False
                if not contains_forall:
                    kept.extend(assert_buf)
                assert_buf = []
            continue

        # Normal line
        kept.append(line)

    return kept


def emit_looplike_block(m: int) -> str:
    buf = []
    buf.append("\n; ======================================")
    buf.append(f"; Unrolled local range validity (m={m})")
    buf.append("; Property: 0 <= duration < 5000")
    buf.append("; Column index: 11 (duration)")
    buf.append("; ======================================\n")

    buf.append("(assert")
    buf.append("  (and")
    for i in range(m):
        buf.append(
            f"    (and (>= (select (select D {i}) {COL}) {LOWER}) "
            f"(<  (select (select D {i}) {COL}) {UPPER}))"
        )
    buf.append("  )")
    buf.append(")")
    buf.append("\n(check-sat)\n")

    return "\n".join(buf)


def main():
    for m in range(500, 40001, 100):
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"⚠️ Missing input: {in_file}")
            continue

        with open(in_file, "r") as f:
            lines = f.readlines()

        kept = cut_forall_asserts_and_checksat(lines)

        # Safety: ensure m exists
        if not any("(define-fun m" in ln for ln in kept):
            kept.append(f"(define-fun m () Int {m})\n")

        with open(out_file, "w") as f:
            f.writelines(kept)
            if kept and not kept[-1].endswith("\n"):
                f.write("\n")
            f.write(emit_looplike_block(m))

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()