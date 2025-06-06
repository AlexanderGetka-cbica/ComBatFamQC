% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Help_Func.R
\name{data_prep}
\alias{data_prep}
\title{Data Preparation}
\usage{
data_prep(
  stage = "harmonization",
  result = NULL,
  features = NULL,
  batch = NULL,
  covariates = NULL,
  df = NULL,
  type = "lm",
  random = NULL,
  smooth = NULL,
  interaction = NULL,
  smooth_int_type = NULL,
  predict = FALSE,
  object = NULL
)
}
\arguments{
\item{stage}{Specifies the stage of analysis for which the data preparation is intended: harmonization or residual.}

\item{result}{A list derived from \code{visual_prep()} that contains dataset and batch effect diagnostic information for Shiny visualization. Can be skipped if \code{features}, \code{batch}, \code{covariates} and \code{df} are provided.}

\item{features}{The name of the features to be harmonized. This can be skipped if \code{result} is provided.}

\item{batch}{The name of the batch variable. Can be skipped if \code{result} is provided.}

\item{covariates}{The names of covariates supplied to \code{model}. This can be be skipped if \code{result} is provided.}

\item{df}{The dataset to be harmonized. This can be be skipped if \code{result} is provided.}

\item{type}{The name of a regression model to be used in batch effect diagnostics, harmonization, and the post-harmonization stage: "lmer", "lm", "gam".}

\item{random}{The variable name of a random effect in linear mixed effect model.}

\item{smooth}{The name of the covariates that require a smooth function.}

\item{interaction}{Expression of interaction terms supplied to \code{model} (eg: "age,diagnosis").}

\item{smooth_int_type}{A vector that indicates the types of interaction in \code{gam} models. By default, smooth_int_type is set to be NULL, "linear" represents linear interaction terms.
"categorical-continuous", "factor-smooth" both represent categorical-continuous interactions ("factor-smooth" includes categorical variable as part of the smooth),
"tensor" represents interactions with different scales, and "smooth-smooth" represents interaction between smoothed variables.}

\item{predict}{A boolean variable indicating whether to run ComBat from scratch or apply existing model to new dataset (currently only work for "original ComBat" and "ComBat-GAM").}

\item{object}{Existing ComBat model.}
}
\value{
\code{data_prep} returns a list containing the processed data and parameter-related information for batch effect diagnostics, harmonization, and post-harmonization downstream analysis.
}
\description{
Prepares the dataset for effective use in batch effect diagnostics, harmonization, and post-harmonization downstream analysis processes within the \code{ComBatFamQC} package.
}
\examples{
data_prep(stage = "harmonization", result = NULL, features = colnames(adni)[43:53],
batch = "manufac", covariates = "AGE", df = head(adni, 100), type = "lm", random = NULL,
smooth = NULL, interaction = NULL, smooth_int_type = NULL, predict = FALSE, object = NULL)

}
