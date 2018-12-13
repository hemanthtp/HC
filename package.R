pkgList <- installed.packages(priority='NA')[,'Package']

# 2. Find out which packages are on CRAN and R-Forge.  Because
#    of R-Forge build capacity is currently limiting the number of
#    binaries available, it is queried for source packages only.
CRANpkgs <- available.packages(
  contriburl=contrib.url('http://cran.r-project.org'))[,'Package']
forgePkgs <- available.packages(
  contriburl=contrib.url('http://r-forge.r-project.org', type='source')
)[,'Package']

#Compile source gz file to zip binary file
R CMD INSTALL --build --compile-both qtl_1.22-18.tar.gz  


#CRAN
#R-Forge
#Bioconductor
#Omegahat


inst <- packageStatus()$inst
inst[inst$Status != "ok", c("Package", "Version", "Status")]

# Find package dependencies

myPkgs <- c("MASS", "Matrix", "KernSmooth", "class", "cluster", "codetools")
pdb <- available.packages()
system.time(
  dep1 <- package_dependencies(myPkgs, db = pdb) # all arguments at default
) # very fast
utils::str(dep1, vec.len=10)

system.time( ## reverse dependencies, recursively --- takes much longer:
  deps <- package_dependencies(myPkgs, db = pdb,
                               which = c("Depibends", "Imports", "LinkingTo", "Suggests"),
                               recursive = TRUE, reverse = TRUE)
) # seen ~ 10 seconds

lengths(deps) # 2015-01-14: all are 7040, but codetools with 7046


#get information about the package
vignette()


library(antiword)
text <- antiword("https://jeroen.github.io/files/UDHR-english.doc")
cat(text)convertr::convert(1:10,'1/K','1/degC')


#-------------- list and install packages from rOpensci
devtools::install_github("ropensci/ropkgs")
library("ropkgs")
out <- ro_pkgs()
out$name
out$version
out$updated
sink()
options(max.print = 99999)
sink("D:/ROpensci/packagelist.txt")
out$packages

on_cran('taxize')
install_ropensci(pkgs = 'IEEER')

head( out$packages )