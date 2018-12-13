rm(list = ls())
library(rJava)

install.packages(c("JGR","Deducer","DeducerExtras"))
install.packages("ez")
install.packages("DeducerANOVA", repos="http://R-Forge.R-project.org", deps = TRUE)
install.packages("DeducerAlpha", repos="http://R-Forge.R-project.org")
install.packages("DeducerPSY220", repos="http://R-Forge.R-project.org")
install.packages("DeducerRichOutput", repos="http://R-Forge.R-project.org")
install.packages("DeducerReshape", repos="http://R-Forge.R-project.org")
install.packages("DeducerPlugInExample")
#-----------------
#use 64 bit R (change in tools --> global options--> r verson)
#C:\Program Files\R\R-x.x.x\etc 

Sys.setenv(JAVA_HOME="")
library(JGR)
JGR()



#library(rJava)
.jinit() # this starts the JVM
#library("Deducer")
#Sys.setenv(NOAWT=1)
library(JGR)
#Sys.unsetenv("NOAWT")
JGR()


#-------------------------------
deducer()


library(DeducerPlugInExample)
scatter <- new(J("example.PlotRDialog"))


JGR::JGR()




local({
  old <- getOption("defaultPackages")
  options(defaultPackages = c(old, "Deducer"))
})