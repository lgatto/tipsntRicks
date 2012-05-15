##' Return the name of variable \code{varname} in call \code{match_call}. 
##'
##' @title Return a variable name
##' @param match_call An object of class \code{call}, as returned by \code{match.call}. 
##' @param varname An \code{character} of length 1 which is looked up in \code{match_call}.
##' @return A \code{character} with the name of the variable passed as parameter
##' \code{varname} in parent close of \code{match_call}.
##' @examples
##' a <- 1
##' f <- function(x, y) 
##'  getVariableName(match.call(), "x")
##' f(x = a)
##' f(y = a)
##' @author Laurent Gatto
getVariableName <- function(match_call, varname) {
  match_call <- as.list(match_call)
  varname <- varname[1]
  mcx <- match_call[[varname]]
  while (any(sapply(mcx, length) != 1))
    mcx <- unlist(lapply(mcx, as.list))
  tail(as.character(mcx), n = 1)
}
