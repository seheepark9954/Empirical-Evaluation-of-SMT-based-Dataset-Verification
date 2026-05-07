import re
from pathlib import Path

# ===== Config =====
START_M = 2000
END_M = 10000
STEP = 1000

IN_TEMPLATE = "{m}.smt2"
OUT_TEMPLATE = "{m}_normal_distance.smt2"

# This is the property block you want to inject.
# It assumes m, n, D already exist in the file.
PROPERTY_BLOCK = r"""
; =====================
; distance-based well-distributedness (1D, recursive distance)
; =====================

; d: Real (distance threshold)
(define-fun d () Real 2.0)

; 1D squared diff sum (keeps the recursive structure)
(define-fun-rec squared-diff-sum-1d ((p Real) (x Real) (size Int)) Real
  (ite (< size 0)
       0.0
       (+ (^ (- p x) 2.0)
          (squared-diff-sum-1d p x (- size 1)))
  )
)

; 1D distance = sqrt(squared sum)
(define-fun distance-1d ((p Real) (x Real) (size Int)) Real
  (^ (squared-diff-sum-1d p x size) 0.5)
)

(assert
  (not
    (exists ((p Real))
      (and
        (>= p -1.0)
        (<= p  1.0)
        (forall ((i Int))
          (=>
            (and (>= i 0) (< i m))
            (> (distance-1d p (select (select D i) 0) (- n 1)) d)
          )
        )
      )
    )
  )
)

(check-sat)
""".lstrip()


def extract_m(text: str) -> int:
    """Extract m from (define-fun m () Int <num>)."""
    m = re.search(r"\(define-fun\s+m\s*\(\)\s+Int\s+(\d+)\s*\)", text)
    if not m:
        raise ValueError("Could not find '(define-fun m () Int <num>)' in input file.")
    return int(m.group(1))


def replace_property_block(text: str, new_block: str) -> str:
    """
    Replace the existing property block at the end of the file.
    We assume the property starts at the last occurrence of '; d^2'
    (as in your current files) and ends before the last '(check-sat)'.
    """
    start = text.rfind("; d^2")
    if start == -1:
        # Fallback: try finding the last property assertion (less reliable)
        start = text.rfind("(assert")
        if start == -1:
            raise ValueError("Could not find property start marker ('; d^2' or '(assert').")

    end = text.rfind("(check-sat)")
    if end == -1:
        raise ValueError("Could not find '(check-sat)' in input file.")

    # Keep everything before old property start, then append the new block.
    return text[:start].rstrip() + "\n\n" + new_block + "\n"


def main():
    for m in range(START_M, END_M + 1, STEP):
        in_path = Path(IN_TEMPLATE.format(m=m))
        out_path = Path(OUT_TEMPLATE.format(m=m))

        if not in_path.exists():
            print(f"[SKIP] Missing input: {in_path}")
            continue

        text = in_path.read_text(encoding="utf-8")
        file_m = extract_m(text)

        # Safety check: ensure filename m matches content m (optional but helpful)
        if file_m != m:
            print(f"[WARN] {in_path}: filename m={m} but content m={file_m}. Using content m.")
            # Still proceed, but you could choose to skip instead.

        out_text = replace_property_block(text, PROPERTY_BLOCK)
        out_path.write_text(out_text, encoding="utf-8")
        print(f"[OK] Written: {out_path}")

    print("Done.")


if __name__ == "__main__":
    main()