install.packages("styler")
library(styler)

setwd("D:/Rbinary/")
#read  the package filesname
pkgFilenames <- read.csv("pkgFilenames.csv", stringsAsFactors = FALSE)[, 1]
install.packages(pkgFilenames, repos = NULL, type = "win.binary")


download.packages(pkgs = "Matrix", 
                  destdir = "D:/RSource/",
                  type = "source")

download.packages("rticles",
destdir = "D:/Rbinary/",
type = "win.binary")


grep("New", state.name)

