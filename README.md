# Empirical Evaluation of SMT-based Dataset Verification

This repository contains the experimental artifacts accompanying the SEFM 2026 submission on SMT-based verification of dataset quality properties.

The benchmarks are encoded in SMT-LIB v2 and evaluated using the Z3 SMT solver. Experiments are conducted on two real-world datasets:

- German Credit Dataset
- Portuguese Bank Marketing Dataset

---

## Repository Structure

### `german_credit_smt2_preprocessing`

Scripts used to preprocess the German Credit dataset and generate SMT-LIB benchmark instances.

### `german_verification_scripts`

Verification benchmarks for:

- Class balance
- Min-max 
- Range validity

Each benchmark is provided in one or more specification styles:

- `baseline`
- `grounding`
- `recursive`

---

### `portuguese_bank_marketing_smt2_preprocessing`

Scripts used to preprocess the Portuguese Bank Marketing dataset and generate SMT-LIB benchmark instances.

### `portuguese_verification_scripts`

Verification benchmarks for:

- Class balance
- Min-max 
- Range validity
- Well-distributedness

---

## Verified Properties

The repository contains SMT-LIB benchmark instances for the following dataset quality properties:

- Range validity
- Min-max 
- Class balance
- Well-distributedness

---

## Specification Styles

### Baseline

Original quantified specification.

### Grounding

Fully unrolled specification without quantifiers.

### Recursive

Recursive-function-based specification.

---

## Additional Experiments

### Column-Slice vs Nested Column-Slice Encoding

To study the impact of data encoding on SMT solving performance, additional range-validity benchmarks are provided using:

- column-slice encoding
- nested column-slice encoding

while keeping the grounding specification unchanged.

Location:

```text
portuguese_verification_scripts/
└── portuguese_range_validity/
    └── column_slice_vs_nested_column_slice_grounding/
```

### Normal Distance vs Squared Distance

The well-distributedness property is provided in two alternative formulations:

- normal-distance
- squared-distance

Additional experiments evaluate the effect of replacing nested column-slice encoding with column-slice encoding.

Location:

```text
portuguese_verification_scripts/
└── portuguese_welldistributed_duration_norm/
```

---

## Equivalence Checking

The repository contains SMT-LIB scripts for checking semantic equivalence between alternative specification styles.

Examples include:

- baseline vs grounding
- baseline vs recursive
- normal-distance vs squared-distance

---

## Repository Statistics

The repository contains:

- 400+ SMT-LIB benchmark instances
- preprocessing scripts
- benchmark generators
- equivalence-checking scripts
- experimental artifacts used in the SEFM 2026 evaluation

---

## Running Benchmarks

Run a benchmark using Z3:

```bash
z3 file.smt2
```

Collect solver statistics:

```bash
z3 -st file.smt2
```

Generate detailed solver logs:

```bash
z3 -st -v:10 file.smt2 > log.txt 2>&1
```

---

## Requirements

- Z3 SMT Solver (version 4.15 or newer recommended)

---

## Authors

Sehee Park, Dominik Geißler, Andrei Aleksandrov, and Kim Völlinger

Artifact accompanying the SEFM 2026 submission.
