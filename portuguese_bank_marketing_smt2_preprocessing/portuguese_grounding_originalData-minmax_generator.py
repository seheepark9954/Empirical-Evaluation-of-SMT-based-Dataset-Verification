# gen_original_minmax_looplike_portuguese.py
# Loop-like encoding for local min-max validity on original Portuguese duration values

import os

COL = 0  # duration-only dataset, so duration is column 0

LOWER = 0
UPPER = 6000

IN_PATTERN = "{m}_baseline.smt2"
OUT_PATTERN = "{m}_grounding.smt2"


def cut_old_spec(lines: list[str]) -> list[str]:
    kept = []
    skipping = False
    depth = 0

    for line in lines:
        stripped = line.strip()

        if stripped.startswith("(check-sat"):
            continue

        if not skipping and stripped.startswith("(assert"):
            # Remove old property assertions, but keep dataset row assertions
            if "forall" in line or "exists" in line:
                skipping = True
                depth = line.count("(") - line.count(")")
                continue

        if skipping:
            depth += line.count("(") - line.count(")")
            if depth <= 0:
                skipping = False
            continue

        kept.append(line)

    return kept


def emit_looplike_block(m: int) -> str:
    buf = []
    buf.append("\n; ===== loop-like: local min-max validity on original Portuguese duration =====")
    buf.append(f"; Property: {LOWER} <= duration <= {UPPER}")
    buf.append("(assert")
    buf.append("  (and")

    for i in range(m):
        buf.append(
            f"    (and (>= (select (select D {i}) {COL}) {LOWER}) "
            f"(<= (select (select D {i}) {COL}) {UPPER}))"
        )

    buf.append("  )")
    buf.append(")")
    buf.append("\n(check-sat)")
    buf.append("; =================================================")

    return "\n".join(buf)


def main():
    for m in range(100, 1001, 100):
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"Missing input: {in_file}")
            continue

        with open(in_file, "r", encoding="utf-8") as f:
            lines = f.readlines()

        kept = cut_old_spec(lines)

        with open(out_file, "w", encoding="utf-8") as f:
            f.writelines(kept)

            if kept and not kept[-1].endswith("\n"):
                f.write("\n")

            f.write(emit_looplike_block(m))

        print(f"Generated: {out_file}")


if __name__ == "__main__":
    main()