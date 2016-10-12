#' Rich data inout
#' 
#' Capture the semantic meaning of the data that
#' we represent. For instance, separately
#' recognizing the 'phenotypic' data (descrbing
#' the samples) and the 'expression' values 
#' (derived from, e.g., microarray or RNAseq
#' experiment).
#' 
#' @param pdata_file phenotype file 
#' 
#' @param exprs_file gene expression data file
#' 
#' @return A SummariedExperiment() containing samples as colData(), and the 
#' expression value as assay().
#' 
#' @importFrom SummarizedExperiment SummarizedExperiment
#' 
#' @export
#'
input_rich <- function(pdata_file, exprs_file){
  pdata <- read.csv(pdata_file, row.names =1, check.names = FALSE)
  exprs <- read.csv(exprs_file, row.names =1, check.names = FALSE)
  
  SummarizedExperiment(as.matrix(exprs), colData=pdata)
  
}