#Compile from windows commandline
R CMD SHLIB hello.c

#run in R 64 bit
source("d:/RSource/hello.R")
 dyn.load('d:/RSource/hello.dll')
 hello2(5)

#-----------------------------------
 The Fortran is similar. In UNIX do 
 R CMD SHLIB bar.f
 and in R do 
 dyn.load("bar.so")
 .Fortran("bar", n=as.integer(5), x=as.double(rnorm(5)))
 #------------------=


devtools::find_rtools()

Sys.which("ls.exe")
Sys.which("gcc.exe")

Sys.which("R.exe")


install.packages("notifier")
library(notifier)
devtools::install_version("notifier")
