#' Transcription
#'
#' @param DNA A DNA sequence
#'
#' @return A RNA sequence
#' @export
#'
#' @examples
#' DNA_sequence <- "CTGGTGGTTTAGGCGTACAATGTCCTGAAGAATATTTAAGAAAAAAGCACCCCTCGTCGCCTAGAATTACCTACCGCGGTCGACCATACCTTCGATTATC"
#' transcription(DNA_sequence)
transcription <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
