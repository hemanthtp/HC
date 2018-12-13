help.start()
print(object.size(get(babynames)), units='auto')

packageVersion("replyr")

install.packages("replyr")
            
library(doMC)
install.packages("doMC")
library(doParallel)
library(colorout)
install.packages("doSNOW")
library(packrat)
install_github("jalvesaq/colorout")

install.packages("doMC", dependencies=TRUE, repos="http://R-Forge.R-project.org")
install.packages("packrat")

ap <- available.packages()
View(ap)
"expp" %in% rownames(ap)
ap["expp", "Depends"]


install.packages("D:/rhdfs_1.0.8.zip", repos=NULL, type="source")



pkgDep("expp")

setRepositories()