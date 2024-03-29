#' Compute a sample mode
#' 
#' @param x Numeric vector
#' @description \code{sample_mode} computes the sample mode, i.e. the value in \code{x} with the highest frequency of occurrence. If there are multiple modes, the mode that occurs first in \code{x} is returned, with a warning that lists the other modes found.
#' @return A single numeric value equal to the sample mode
#' @examples
#' data(anchoring)
#' sample_mode(anchoring$everest_feet)
#' # Multiple modes give a warning:
#' sample_mode(c(3,3,3,1,1,1,2,2,2))
#' @export


sample_mode <- function(x) {
  ## extract only the unique values in x
  ux <- unique(x)
  ## 
  nx <- tabulate(match(x, ux))
  ## 'max' returns the maximum value of it's argument (e.g. a vector)
  ## 'which' returns the counters of all elements which match its argument
  ## so which == max returns the counters of nx which equal the maximum
  maxid <- which(nx == max(nx))
  ## if there are multiple modes, which returns a vector of length > 1
  ## in that case, there is no single mode and we might as well return
  ## the first one, but with a warning
  if(length(maxid) > 1) {
    warning("There are multiple modes, only the first value is returned, other modes are at: ",paste(ux[maxid[2:length(maxid)]],collapse=", "))
  }
  # pick first one
  ux[maxid[1]]
}