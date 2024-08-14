#' Split a string
#'
#' @param string A character vector with, at most, one element
#' @inheritParams stringr::str_split
#'
#' @return A character vector, normally with more than one element
#' @export
#'
#' @examples
#' x <- "alpha,beta,gamma,delta"
#' str_split_one(x, pattern = ",")
#' str_split_one(x, pattern = ",", n=2)


str_split_one <- function(string, pattern, n=Inf) {
  stopifnot(is.character(string), length(string)<=1)
  if (length(string)==1) {
    stringr::str_split(string=string,pattern=pattern,n=n)[[1]]
  } else {
    character()
  }
}
