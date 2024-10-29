
#' Converting an RNA sequence to codons
#'
#' @param RNA_seq, a sequence of RNA
#' @param start, the position in the sequence you want to start converting into codons. Default is 1
#'
#' @return A sequence of codons derived from the input RNA
#' @export
#'

RNA_to_codon <- function(RNA_seq, start = 1){
  number_of_codons <- nchar(RNA_seq)
  codons <- substring(RNA_seq,
                      first = seq(from = start, to = number_of_codons-3+1, by = 3),
                      last = seq(from = 3+start-1, to = number_of_codons, by = 3))
  return(codons)
}


