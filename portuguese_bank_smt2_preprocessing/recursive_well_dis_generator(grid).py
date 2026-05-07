# gen_welldistributed_recursive_grid.py
# Grid-based recursive well-distributedness generator (1D)
# - keeps ALL data assertions
# - removes only old well-distributedness blocks
# - inserts grid + fully recursive specification

import os

IN_PATTERN = "{m}.smt2"
OUT_PATTERN = "{m}_recursive_grid.smt2"

GRID_POINTS = [-1.0, -0.5, 0.0, 0.5, 1.0]


def cut_old_well_distributed(lines: list[str]) -> list[str]:
    kept = []
    skipping = False
    depth = 0

    for line in lines:
        if "; well-distributedness" in line:
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


def emit_grid_recursive_block(m: int) -> str:
    buf = []

    buf.append("""
; =====================
; Grid points for p
; =====================
(declare-const P (Array Int Real))
""")

    for i, v in enumerate(GRID_POINTS):
        buf.append(f"(assert (= (select P {i}) {v}))")

    buf.append("""
; =====================
; Recursive predicate: p is far from all data points
; =====================
(define-fun-rec all_far ((p Real) (i Int)) Bool
  (ite (< i 0)
       true
       (and
         (> (* (- p (select (select D i) 0))
               (- p (select (select D i) 0)))
            d2)
         (all_far p (- i 1))
       )
  )
)

; =====================
; Recursive grid check
; =====================
(define-fun-rec check_grid ((k Int)) Bool
  (ite (< k 0)
       true
       (and
         (not (all_far (select P k) (- m 1)))
         (check_grid (- k 1))
       )
  )
)

(assert (check_grid 4))
(check-sat)
""")

    return "\n".join(buf)


def main():
    for m in range (100,1001,100):  # 필요하면 확장
        in_file = IN_PATTERN.format(m=m)
        out_file = OUT_PATTERN.format(m=m)

        if not os.path.exists(in_file):
            print(f"⚠️ Missing input: {in_file}")
            continue

        with open(in_file, "r") as f:
            lines = f.readlines()

        kept = cut_old_well_distributed(lines)

        with open(out_file, "w") as f:
            f.writelines(kept)
            if kept and not kept[-1].endswith("\n"):
                f.write("\n")
            f.write(emit_grid_recursive_block(m))

        print(f"✅ Generated: {out_file}")


if __name__ == "__main__":
    main()