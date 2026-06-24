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

- Balancedness
- Min-max validity
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

- Balancedness
- Min-max validity
- Range validity
- Well-distributedness

---

## Verified Properties

The repository contains SMT-LIB benchmark instances for the following dataset quality properties:

- Range validity
- Min-max validity
- Balancedness
- Well-distributedness

---

## Specification Styles

### Baseline

Original quantified specification.

Example:

```text
100_baseline.smt2
