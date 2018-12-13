packs <- c('stringi', 'httpuv', 'digest', 'htmltools', 'sourcetools', 'evaluate', 'markdown', 
           'stringr', 'yaml', 'rJava', 'testthat')

laply(packs, function(x){
  install.packages(x)  
  readline(prompt="Press [enter] to continue")
}
)

names(knitr::knit_engines$get())
names(xaringan:::list_css())


help.start()
getwd()
setwd("E:/Novartis/Test/")
install.packages("pkgdown")
pkgdown::build_site()


bookdown::render_book()
