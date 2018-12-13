#get author of a package
#https://www.stat.auckland.ac.nz/~paul/R/Diagram/diagram.pdf
library(pacman)
p_author(package = "spellcheckr")

help(package = "spellcheckr")

#install packages from the source instead of binary
setwd('D:/RSource/')
install.packages("nutshell", repos = NULL, type="source")

#or 
R CMD INSTALL nutshell_2.0.tar.gz

#In addition, you can build the binary package using the --binary option.
R CMD build --binary nutshell_2.0.tar.gz