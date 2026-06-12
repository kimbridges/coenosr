#' coenosr: Reconstruction of the 1991 COENOS Braun-Blanquet table-sorting method
#'
#' COENOS (Adolf Ceska, 1991) was a compiled-Pascal program for numerical
#' phytosociology in the Braun-Blanquet tradition. It sorted a raw
#' species-by-releve table into a structured two-way table of differential
#' species groups, forming groups by inside/outside frequency rules and ordering
#' them by reciprocal averaging. The original source is lost. **coenosr** is a
#' faithful reconstruction of that method in R, developed and validated against
#' tables the original program produced (preserved as bundled example data and
#' decoded ground-truth oracles).
#'
#' @section Status:
#' This release provides the releve-file reader, [read_rel()], and the
#' [constancy()] helper. Group formation and reciprocal-averaging ordering are
#' the next components.
#'
#' @section Bundled data:
#' `inst/extdata` carries two example releve files (`DIEREN.REL`, `ELLEN.REL`)
#' and three decoded ground-truth tables
#' (`dieren_s00_species.csv`, `ellen_s00_species.csv`, `set1_s00_species.csv`)
#' giving each species' constancy, role, and group membership as produced by the
#' original COENOS run. These are used by the package tests as validation
#' oracles.
#'
#' @keywords internal
"_PACKAGE"
