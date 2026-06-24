Empirical Evaluation of SMT-based Dataset Verification

This repository contains the experimental artifacts accompanying the SEFM 2026 submission on SMT-based verification of dataset quality properties.

The benchmarks are encoded in SMT-LIB v2 and evaluated using the Z3 SMT solver. Experiments are conducted on two real-world datasets:

* German Credit Dataset
* Portuguese Bank Marketing Dataset

⸻

Repository Structure

german_credit_smt2_preprocessing

Scripts used to preprocess the German Credit dataset and generate SMT-LIB benchmark instances.

german_verification_scripts

Verification benchmarks for:

* Balancedness
* Min-max validity
* Range validity

Each benchmark is provided in one or more specification styles:

* baseline
* grounding
* recursive

⸻

portuguese_bank_marketing_smt2_preprocessing

Scripts used to preprocess the Portuguese Bank Marketing dataset and generate SMT-LIB benchmark instances.

portuguese_verification_scripts

Verification benchmarks for:

* Balancedness
* Min-max validity
* Range validity
* Well-distributedness

⸻

Verified Properties

The repository contains SMT-LIB benchmark instances for the following dataset quality properties:

* Range validity
* Min-max validity
* Balancedness
* Well-distributedness

⸻

Specification Styles

Baseline

Original quantified specification.

Example:

100_baseline.smt2

Grounding

Fully unrolled specification without quantifiers.

Example:

100_grounding.smt2

Recursive

Recursive-function-based specification.

Example:

100_recursive.smt2

⸻

Additional Experiments

Column-Slice vs Nested Column-Slice Encoding

The Portuguese range-validity benchmarks include an additional comparison between:

* column-slice encoding
* nested column-slice encoding

using the same grounding specification.

Location:

portuguese_verification_scripts/
└── portuguese_range_validity/

⸻

Normal Distance vs Squared Distance

The Portuguese well-distributedness benchmarks include two alternative formulations:

* normal-distance
* squared-distance

Additional experiments evaluate both formulations under column-slice encoding.

Location:

portuguese_verification_scripts/
└── portuguese_welldistributed_duration_norm/

⸻

Equivalence Checking

The repository contains SMT-LIB scripts for checking semantic equivalence between alternative specification styles.

Examples include:

* baseline vs grounding
* baseline vs recursive
* normal-distance vs squared-distance

⸻

Running Benchmarks

Run a benchmark using Z3:

z3 file.smt2

Collect solver statistics:

z3 -st file.smt2

Generate detailed solver logs:

z3 -st -v:10 file.smt2 > log.txt 2>&1

⸻

Requirements

* Z3 SMT Solver (version 4.15 or newer recommended)

⸻

Authors

Sehee Park

Artifact accompanying the SEFM 2026 submission.
