% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classic.R
\name{input_classic}
\alias{input_classic}
\title{Classic R Approaches to Data Analysis}
\usage{
input_classic(pdata_file, exprs_file)
}
\arguments{
\item{pdata_file}{character (1) The path to the pheno data file.}

\item{exprs_file}{Character (1) The path to the expression file.}
}
\value{
A data.frame containing samples as rows and phenotype data
  and expression data as columns.
}
\description{
The function here illustrate how an old school R user might approach
data management and analysis
}
\details{
There are 2 files.  They are from a classic microarray experiment.
  The first file, ALL-phenoData.csv describes the samples.  THe second file,
  ALL-expression.csv are the normalized expression values for 12K probesets
  across the 128 samples.  The files originally came from Excel sheets and
  were saved as .csv files.
}

