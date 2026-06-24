import re
from pathlib import Path

# ===== Batch range =====
START_M = 1000
END_M = 10000
STEP = 1000

# ===== File name templates =====
IN_TEMPLATE = "{m}_baseline.smt2"
OUT_TEMPLATE = "{m}_squared_distance.smt2"   

# ===== Property block to inject (your squared-distance recursive logic) =====
PROPERTY_BLOCK = r"""
; =====================
; squared-distance well-distributedness (1D, recursive squared distance)
; =====================

; d^2: Real (squared distance threshold)
(define-fun d2 () Real 4.0)

; 1D squared diff sum (keeps the recursive structure)
(define-fun-rec squared-diff-sum-1d ((p Real) (x Real) (size Int)) Real
  (ite (< size 0)
       0.0
       (+ (* (- p x) (- p x))
          (squared-diff-sum-1d p x (- size 1)))
  )
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
            (> (squared-diff-sum-1d p (select (select D i) 0) (- n 1)) d2)
          )
        )
      )
    )
  )
)

(check-sat)
""".lstrip()


def extract_m(text: str) -> int:
    """Extract m from: (define-fun m () Int <num>)"""
    m = re.search(r"\(define-fun\s+m\s*\(\)\s+Int\s+(\d+)\s*\)", text)
    if not m:
        raise ValueError("Could not find '(define-fun m () Int <num>)' in input file.")
    return int(m.group(1))


def replace_tail_property_block(text: str, new_block: str) -> str:
    """
    Replace the property block at the end of the file.
    Strategy: replace from the LAST occurrence of '; d^2' up to the LAST '(check-sat)' (inclusive).
    This matches your current files: data assertions then '; d^2' block then '(check-sat)'.
    """
    start = text.rfind("; d^2")
    if start == -1:
        raise ValueError("Could not find property marker '; d^2' in input file.")

    end = text.rfind("(check-sat)")
    if end == -1:
        raise ValueError("Could not find '(check-sat)' in input file.")

    # Drop everything from start to the end of the old check-sat line
    # and replace with new_block (which already contains (check-sat)).
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

        # Optional safety check
        if file_m != m:
            print(f"[WARN] {in_path}: filename m={m} but content m={file_m}. Proceeding anyway.")

        out_text = replace_tail_property_block(text, PROPERTY_BLOCK)
        out_path.write_text(out_text, encoding="utf-8")

        print(f"[OK] Written: {out_path}")

    print("Done.")


if __name__ == "__main__":
    main()