## Credit 
## 

##' Track how a variable is updated. 
##' This function was written by Hadley Wickham. Original source is 
##' \url{http://www.mail-archive.com/r-help@@r-project.org/msg125980.html}.
##'
##' @title Watch a variable.
##' @param varname A \code{character} with the name of
##' the variable to be watched.
##' @return Invisibly returns the \code{addTaskCallback}
##' return values, an \code{integer} giving the position
##' in the list of task callbacks. 
##' @author Hadley Wickham
##' @examples
##' a <- 1
##' watch("a")
##' a <- 2
watch <- function(varname) {
  old <- get(varname)
  changed <- function(...) {
    new <- get(varname)
    if (!identical(old, new)) {
      message(varname, " is now ", new)
      old <<- new
    }
    TRUE
  }
  invisible(addTaskCallback(changed))
}
