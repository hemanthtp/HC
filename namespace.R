# Search path or currenly loaded packages
search()
lns <- loadedNamespaces()
lns

library(testthat)
old <- search()
testthat::expect_equal(1,1)
setdiff(search(),old)
expect_true(TRUE)

library(testthat)
expect_equal(1, 1)
setdiff(search(), old)

library(x)


#Example: Cascading of environments
f <- function(f_x){
  g <- function(g_x){
    print("Inside g")
    print(environment())
    print(ls())
  }
  g(5)
  print("Inside f")
  print(environment())
  print(ls())
}
f(6)
environment()
ls()


pow <- function(x, y) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}



dim(mtcars)
dim <- function(x) c(1, 1)
dim(mtcars)

nrow(mtcars)


