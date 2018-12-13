citation("Rcpp")
toBibtex(citation("knitr"))
install.packages("addinslist")
install.packages("citr")
library(citr)

citation(package = 'wordcount')

devtools::install_github("crsh/papaja")


install.packages("bibliometrix")
library(bibliometrix)
D <- readFiles("http://www.bibliometrix.org/datasets/savedrecs.bib")
M <- convert2df(D, dbsource = "isi", format = "bibtex")


results <- biblioAnalysis(M, sep = ";")

options(width=100)
S <- summary(object = results, k = 10, pause = FALSE)
## 

plot(x = results, k = 10, pause = FALSE)
