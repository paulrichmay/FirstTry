#' Rich data input
#' 
#'  Capture semantic meaning of data we represent.  For instance, separately 
#'  recognizing the phenotypic data describing sample and the expression
#'  values derives from microarray or RNAseq experiment.
#'  
#' @param pdata_file character (1) The path to the pheno data file.
#'
#' @param exprs_file Character (1) The path to the expression file.
#'
#' @return A summarized experiment containing samples as colData(), and 
#' the expression values as assay()
#'
#' @importFrom SummarizedExperiment SummarizedExperiment
#'
#' @export
#' 

input_rich = function(pdata_file, exprs_file){
     pdata = read.csv(pdata_file, row.names = 1, check.names = F)
     exprs = read.csv(exprs_file, row.names = 1, check.names = F)
     
     ##return a data.frame
     merge(pdata, t(exprs), by = 0) #by = 0 means merge by row name
     
     #create summarized experiment object
     SummarizedExperiment(as.matrix(exprs), colData = pdata)
}