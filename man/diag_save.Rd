% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Help_Func.R
\name{diag_save}
\alias{diag_save}
\title{Export Batch Effect Diagnosis Results}
\usage{
diag_save(path, result, use_quarto = TRUE)
}
\arguments{
\item{path}{The path to save the result.}

\item{result}{A list derived from \code{visual_prep()} that contains datasets and statistical test results.}

\item{use_quarto}{A boolean variable indicating whether to generate a Quarto report.}
}
\value{
This function does not return a value. It saves the data to the specified file.
}
\description{
Save all the batch effect diagnosis results in a single Excel file or a Quarto report.
}
\examples{
if(interactive()){
  result <- visual_prep(type = "lm", features = "thickness.left.cuneus",
  batch = "manufac", covariates = "AGE", df = adni[1:100, ], mdmr = FALSE, cores = 1)
  temp_dir <- tempfile()
  dir.create(temp_dir)
  diag_save(temp_dir, result, quarto = FALSE)
  message("Diagnostics saved to: ", temp_dir)
  unlink(temp_dir, recursive = TRUE)  # Clean up the temporary directory
}
\dontshow{
# Ensure temp_dir exists before attempting cleanup
if (exists("temp_dir")) unlink(temp_dir, recursive = TRUE)
}
}
