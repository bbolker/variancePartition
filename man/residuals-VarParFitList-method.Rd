% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc.R
\name{residuals,VarParFitList-method}
\alias{residuals,VarParFitList-method}
\title{Residuals from model fit}
\usage{
\S4method{residuals}{VarParFitList}(object, ...)
}
\arguments{
\item{object}{object produced by fitVarPartModel()}

\item{...}{other arguments.}
}
\value{
Residuals extracted from model fits stored in object
}
\description{
Extract residuals for each gene from model fit with fitVarPartModel()
}
\details{
If model is fit with missing data, residuals returns NA for entries that were 
missing in the original data
}
\examples{
# load library
# library(variancePartition)

library(BiocParallel)

# load simulated data:
# geneExpr: matrix of gene expression values
# info: information/metadata about each sample
data(varPartData)

# Specify variables to consider
# Age is continuous so we model it as a fixed effect
# Individual and Tissue are both categorical, so we model them as random effects
form <- ~ Age + (1|Individual) + (1|Tissue) 

# Fit model
modelFit <- fitVarPartModel( geneExpr, form, info )

# Extract residuals of model fit
res <- residuals( modelFit )


}
