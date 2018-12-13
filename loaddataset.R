erd <- read.csv(file="d:/baseerd.csv")
save(erd,file="d:/data.Rda")
load("d:/data.Rda")
View(erd)
--------------------------------------------------
dget("d:/statistics.R")
> data("exampleData")
> View(exampleData)
#------------------------------------------------------------
grumpy <- 1; happy <- 42; sneezy <- 1/7
save(grumpy, happy, sneezy, file="Dwarves.RData")
ls()
myenv <- new.env()
load("Dwarves.RData", env=myenv)
ls(envir=myenv)
myenv$sneezy

getwd()
#download package's source code that is available from the same CRAN (or CRAN compatible) repository 
download.packages(pkgs = "Matrix", 
                  destdir = "D:/RSource/",
                  type = "source")


untar(download.packages(pkgs = "Matrix",
                        destdir = "D:/RSource/",
                        type = "source")[,2])

untar("D:/RSource/Matrix_1.2-14.tar.gz")

#here's a good way to get source code for a package function without needing to know which package it's in
#if we want the source for randomForest::rfcv():
edit(getAnywhere('rfcv'), file='source_rfcv.r')
#To redirect to a separate file:
capture.output(getAnywhere('rfcv'), file='source_rfcv.r')

#It gets revealed when you debug using the debug() function. Suppose you want to see the underlying code in t() transpose function. Just typing 't', doesn't reveal much.

t 
#But, Using the 'debug(functionName)', it reveals the underlying code, sans the internals
debug(t)
t(co2)
debugonce(t)


#For non-primitive functions, R base includes a function called body() that returns the body of function. For instance the source of the print.Date() function can be viewed:
body(print.Date)

#If you are working in a script and want the function code as a character vector, you can get it.
capture.output(print(body(print.Date)))

sourceVector = capture.output(print(body(x[["fun"]])))
cat(paste0("      ", sourceVector, "\n"))

new_optim <- edit(optim)


#If you just want to view the source code and don't want the annoying long source code printed on your console, you can use
invisible(edit(optim))


functionBody(pow)

View(pow)
View(mean)
print.function(pow, useSource = TRUE)


#s3
methods(predict)
stats:::predict.lm

#s4
 library(Matrix)
 chol2inv

 showMethods(chol2inv)
 getMethod("chol2inv","diagonalMatrix")
 
 
  stats::: .makeNamesTs
  getAnywhere(.makeNamesTs)
 
  
  install.packages("sodium")
  install.packages("secure")
  
  Sys.getenv('PATH')
  system('g++ -v')
  system('where make')
  
  install.packages(c("RInside","inline"))
  