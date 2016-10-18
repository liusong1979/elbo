#' Classic R approaches to data analysis
#'
#' The functions here ... data management and analysis
#'
#' @details There are two files. They are from a micorarray experiments.
#' The 1st file, All-phenotype.csv descrbes the 128 samples. The 2nd file,
#' is the exeriment data file
#'
#' @param pdata_file character(1) The path to the pheno data file.
#'
#' @param exprs_file character(1) The path to the expression file.
#'
#'
#' @importFrom utils read.csv
#'
#' @return A data.frame containing samples as rows and phenotype data and
#' expression data as columns.
#'
#'
#'
#' @export

input_classic <- function(pdata_file, exprs_file){
  stopifnot(is_scalar_character(pdata_file))
  stopifnot(is_scalar_character(exprs_file))
  pdata <-read.csv(pdata_file, row.names = 1, check.names = FALSE)
  exprs = read.csv(exprs_file, row.names = 1, check.names = FALSE)

  all = merge(pdata, t(exprs), by=0)
  return(all)


  ## return a data.frame



}
