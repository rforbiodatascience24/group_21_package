#' Write aa sequence from codons
#'
#' @param codons list of codons and corresponding letter
#'
#' @return A character vector of amino acids
#' @export
#'
#' @examples
#' codons <- c("UUU","UUC")
#' aa_sequence(codons)
aa_sequence <- function(codons){
  codon_convert_aa <- paste0(codon_table[codons], collapse = "")
  return(codon_convert_aa)
}
