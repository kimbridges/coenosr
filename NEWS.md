# coenosr 0.0.0.9000

First functions of the COENOS reconstruction:

* `read_rel()` reads a COENOS relevé file into a tidy long table. Handles the
  documented parsing rules (6-character relevé codes, the 4+4 species key kept
  opaque, first-non-blank cover, duplicate-last-wins, `&&` comments,
  case-sensitivity) and both cover scales. Reads the bundled `DIEREN.REL`,
  `ELLEN.REL`, and `SET1.DAT` (CRLF, numeric covers).
* `constancy()` returns per-species occurrence counts.
* `classify_species()` performs the COENOS trim step, splitting species into
  `rare` (constancy < 3), `eligible`, and `ubiquitous` (constancy >= floor(2n/3)).
* `print.coenos_rel()` summary method.

Validation: `read_rel()` and `classify_species()` are checked against decoded
`.S00` ground-truth oracles for all three bundled datasets (exact matches).

Still to come: differential group formation (the inside/outside frequency
engine), reciprocal-averaging ordering, and the sorted two-way table output.
