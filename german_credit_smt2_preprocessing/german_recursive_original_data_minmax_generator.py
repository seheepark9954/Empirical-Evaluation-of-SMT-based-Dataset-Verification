# gen_original_minmax_recursive.py
# Recursive encoding for local min-max validity on original duration values

import os

COL = 0

MIN_VAL = 0
MAX_VAL = 600

IN_PATTERN = "{m}_baseline.smt2"
OUT_PATTERN = "{m}_recursive.smt2"


def cut_old_spec(lines: list[str]) -> list[str]:
    kept = []
    skipping = False
    depth = 0

    for line in lines:
        stripped = line.strip()

        if stripped.startswith("(check-sat"):
            continue

        if stripped.startswith("(define-fun min") or stripped.startswith("(define-fun max"):
            continue

        if stripped.startswith("(define-fun-rec minmax-ok"):
            skipping = True
            depth = line.count("(") - line.count(")")
            continue

        if not skipping and stripped.startswith("(assert"):
            if "forall" in line or "exists" in line or "minmax-ok" in line:
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


def emit_recursive_block() -> str:
    return f"""
; ===== bounds for original duration values =====
(define-fun min () Int {MIN_VAL})
(define-fun max () Int {MAX_VAL})

; ===== recursive min-max validity on original duration =====
(define-fun-rec minmax-ok ((i Int)) Bool
  (ite (< i 0)
       true
       (and
         (>= (select (select D i) {COL}) min)
         (<= (select (select D i) {COL}) max)
         (minmax-ok (- i 1))
       )
  )
)

(assert (minmax-ok (- m 1)))
(check-sat)
"""


def main():
    for m in range(100, 1001, 100):
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"Missing input: {in_file}")
            continue

        with open(in_file, "r") as f:
            lines = f.readlines()

        kept = cut_old_spec(lines)

        with open(out_file, "w") as f:
            f.writelines(kept)

            if kept and not kept[-1].endswith("\n"):
                f.write("\n")

            f.write(emit_recursive_block())

        print(f"Generated: {out_file}")


if __name__ == "__main__":
    main()