#' generate_sequence
#'
#' @param sequence_length the length of the sequence you want to generate
#'
#' @return Random DNA sequence
#' @export
#'
#' @examples
#' sequence_length <- 10
#' dna_sequence <- generate_sequence(sequence_length)
generate_sequence <- function(sequence_length) {
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}
