ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
packages <- c("ztable", "zipfR")
ipak(packages)

library(ztable)

RSiteSearch(install.packages)


devtools::install_github("hrbrmstr/speedtest")
library(spee)
