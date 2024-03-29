% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lm.one.drug.vs.continuous.R
\name{lm.one.drug.vs.continuous}
\alias{lm.one.drug.vs.continuous}
\title{Linear modeling of drug to a continuous covariate. With ability to control for one other covariate, output correlation of continuous value with drug sensitivity as log10 signed pvals.}
\usage{
lm.one.drug.vs.continuous(continuous.frame, drug.frame,
  type.frame = NULL, drug.name = "TRE515",
  output.file = "./continuous.with.signedlog10pvals.txt",
  percent.zeros = 0.98)
}
\arguments{
\item{continuous.frame}{columns are samples continous values  are rows. data frame of expression or dependency etc data,  'gene' is first column header with list of gene names or feature names, and list of sample names. Other columns have sample names as column names and values (eg. expression) in the frame itself}

\item{drug.frame}{columns are samples drugs are rows. Data frame with 'drug' in first column header, and list of drug names underneath.Other columns have sample names as column headers and drug values in the frame itself}

\item{type.frame}{Default null. If you want to correct for a covariate create a dataframe with headers 'sample' 'type' . sample names in first column , cancer type in second column (or whatever covariate you want to correct for)}

\item{drug.name}{name of the drug you will be comparing to i.e. column name to extract from the drug frame}

\item{output.file}{where to write the output file. default is current working directory with name continuous.with.type.signedlog10pvals.txt}

\item{percent.zeros}{remove rows that have more than this percent of zeros  0 to 1 scale.  0.98 (98 percent) is default}
}
\description{
Linear modeling of drug to a continuous covariate. With ability to control for one other covariate, output correlation of continuous value with drug sensitivity as log10 signed pvals.

writes out to a file and returns a data frame of the results.
}
