install.packages("devtools")
devtools::install_github("kassambara/survminer")


source("https://bioconductor.org/biocLite.R")
biocLite()

install.packages("BiocManager")

BiocManager::install(c("GenomicRanges", "Organism.dplyr"))

BiocManager::version()

avail <- BiocManager::available()
length(avail)

install.packages(available.packages( )[,1])

#https://bioconductor.org/packages/2.9/bioc/src/contrib/Biobase_2.14.0.tar.gz
chooseBioCmirror()
chooseCRANmirror()

download.packages(pkgs = "Biobase", 
                  destdir = "D:/RSource/",
                  type = "source")

#biocLite(pkgs=c("Biobase", "IRanges", "AnnotationDbi"),  
 #        suppressUpdates=FALSE,
  #       suppressAutoUpdate=FALSE,
   #      siteRepos=character(),
    #     ask=TRUE, ...)