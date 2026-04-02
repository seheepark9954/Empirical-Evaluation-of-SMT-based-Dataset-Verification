import csv
import json
from pathlib import Path

# =========================
# CONFIG
# =========================
INPUT_CSV = "bank-full.csv"
N = 45211
OUT_SMT = f"{N}_portuguese_bank.smt2" if N is not None else "bank_full.smt2"
OUT_JSON = f"{N}_portuguese_bank.mappings.json"

DELIMITER = ";"
HAS_HEADER = True

# LABEL은 사용 안 함 (데이터만)
EXTRACT_LABEL = False

NUMERIC_FORCE = set()

# =========================
# Helpers
# =========================
def is_int_string(s: str) -> bool:
    try:
        int(s)
        return True
    except Exception:
        return False

def normalize_token(s: str) -> str:
    return s.strip()

def infer_column_types(rows, headers):
    types = []
    for j, col_name in enumerate(headers):
        if col_name in NUMERIC_FORCE:
            types.append("int")
            continue
        all_int = all(is_int_string(normalize_token(r[j])) for r in rows)
        types.append("int" if all_int else "cat")
    return types

def build_category_maps(rows, headers, types):
    maps = {}
    for j, t in enumerate(types):
        if t != "cat":
            continue
        uniq = []
        seen = set()
        for r in rows:
            tok = normalize_token(r[j])
            if tok not in seen:
                seen.add(tok)
                uniq.append(tok)
        maps[j] = {tok: idx for idx, tok in enumerate(uniq)}
    return maps

def encode_rows(rows, headers, types, cat_maps):
    X = []
    for r in rows:
        row_enc = []
        for j in range(len(types)):
            tok = normalize_token(r[j])
            if types[j] == "int":
                row_enc.append(int(tok))
            else:
                row_enc.append(cat_maps[j][tok])
        X.append(row_enc)
    return X, headers

def smt_row_constructor_int(n, fname):
    args = " ".join([f"(x{j} Int)" for j in range(n)])
    expr = "((as const (Array Int Int)) 0)"
    for j in range(n):
        expr = f"(store {expr} {j} x{j})"
    return f"""
(define-fun {fname} ({args}) (Array Int Int)
  {expr}
)
""".strip()

def write_smt2(out_path, X, headers):
    m = len(X)
    n = len(X[0])
    row_fun = f"row{n}"

    with open(out_path, "w", encoding="utf-8") as f:
        f.write("; bank-full.csv → SMT-LIB2 (data only)\n")
        f.write("; D[row][col] = encoded feature value\n\n")

        f.write("(set-logic QF_AUFLIA)\n\n")

        f.write(f"(define-fun m () Int {m})\n")
        f.write(f"(define-fun n () Int {n})\n\n")

        f.write("(declare-const D (Array Int (Array Int Int)))\n\n")

        f.write("; Feature order:\n")
        for j, h in enumerate(headers):
            f.write(f";   {j}: {h}\n")
        f.write("\n")

        f.write(smt_row_constructor_int(n, row_fun))
        f.write("\n\n")

        for i, row in enumerate(X):
            vals = " ".join(map(str, row))
            f.write(f"(assert (= (select D {i}) ({row_fun} {vals})))\n")

        f.write("\n(check-sat)\n")

# =========================
# Main
# =========================
def main():
    in_path = Path(INPUT_CSV)
    if not in_path.exists():
        raise FileNotFoundError(INPUT_CSV)

    with open(in_path, newline="", encoding="utf-8") as f:
        reader = csv.reader(f, delimiter=DELIMITER)
        rows_raw = list(reader)

    headers = [normalize_token(x) for x in rows_raw[0]]
    data = rows_raw[1:N+1] if N is not None else rows_raw[1:]
    data = [[normalize_token(x) for x in row] for row in data]

    types = infer_column_types(data, headers)
    cat_maps = build_category_maps(data, headers, types)

    X, feature_headers = encode_rows(data, headers, types, cat_maps)

    write_smt2(OUT_SMT, X, feature_headers)

    # ✅ categorical mapping JSON 저장 (중요!)
    pretty_maps = {
        headers[j]: mapping
        for j, mapping in cat_maps.items()
    }
    with open(OUT_JSON, "w", encoding="utf-8") as f:
        json.dump(pretty_maps, f, ensure_ascii=False, indent=2)

    print("✅ Done")
    print(f" - Rows (m): {len(X)}")
    print(f" - Columns (n): {len(X[0])}")
    print(f" - SMT2: {OUT_SMT}")
    print(f" - Mappings: {OUT_JSON}")

if __name__ == "__main__":
    main()