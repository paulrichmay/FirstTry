#' Classic R Approaches to Data Analysis
#'
#' The function here illustrate how an old school R user might approach
#' data management and analysis
#'
#' @details There are 2 files.  They are from a classic microarray experiment.
#'   The first file, ALL-phenoData.csv describes the samples.  THe second file,
#'   ALL-expression.csv are the normalized expression values for 12K probesets
#'   across the 128 samples.  The files originally came from Excel sheets and
#'   were saved as .csv files.
#'
#' @param pdata_file character (1) The path to the pheno data file.
#'
#' @param exprs_file Character (1) The path to the expression file.
#'
#' @return A data.frame containing samples as rows and phenotype data
#'   and expression data as columns.
#'
#' @export
#'
input_classic = function(pdata_file, exprs_file){
     pdata = read.csv(pdata_file, row.names = 1, check.names = F)
     exprs = read.csv(exprs_file, row.names = 1, check.names = F)

     ##return a data.frame
     merge(pdata, t(exprs), by = 0) #by = 0 means merge by row name

}
