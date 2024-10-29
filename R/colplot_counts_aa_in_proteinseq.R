#' counts number of different aminosacids in a protein sequence and plot sit in a colplot
#'
#' @param protein_sequence a string of aa
#'
#' @return plot of number of aminoacids in a column plot
#' @export
# takes a protein sequence, then splits it into aa and makes a string
# with all unique aa
colplot_number_aa_in_protseq <- function(protein_sequence){
    single_aa <- protein_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
# counts the number of different aa in the protein sequence
  counts <- sapply(single_aa, function(amino_acid) stringr::str_count(string = protein_sequence, pattern =  amino_acid)) |>
    as.data.frame()
# changes the counts to Counts, and adds the rownames aa as values in the dataframe
  colnames(counts) <- c("Counts")
  counts[["Protein_sequence"]] <- rownames(counts)
# plots the counts of aa in the protein sequence in a colplot
  colplot_aa_count <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Protein_sequence, y = Counts, fill = Protein_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(colplot_aa_count)
}
