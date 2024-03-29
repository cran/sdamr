% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{papervotes}
\alias{papervotes}
\title{Data based on a post-election survey by YouGov (see \url{https://yougov.co.uk/topics/politics/articles-reports/2017/06/13/how-britain-voted-2017-general-election}). Note that the data was recreated by combining frequency and percentage results reported in \url{https://d25d2506sfb94s.cloudfront.net/cumulus_uploads/document/smo1w49ph1/InternalResults_170613_2017Election_Demographics_W.pdf}. Due to rounding and other potential inconsistencies, this data set will likely differ from the actual results.}
\format{
An object of class \code{data.frame} with 90 rows and 3 columns.
}
\source{
\url{https://d25d2506sfb94s.cloudfront.net/cumulus_uploads/document/smo1w49ph1/InternalResults_170613_2017Election_Demographics_W.pdf}.
}
\usage{
papervotes
}
\description{
\@format A data frame with 90 observations of 3 variables:
\describe{
\item{newspaper}{(factor) Reported newspaper read most often}
\item{vote}{(factor) Which party voted on (including "did not vote")}
\item{n}{(numeric) Number of people in the survey who responded with that combination of newspaper and vote}
}
}
\keyword{datasets}
