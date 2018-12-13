library(shiny)
runExample("01_hello")

#shinyapps.io
install.packages('rsconnect')
rsconnect::setAccountInfo(name='mishemanth', token='033F252ECB7B784B298A7B70A63AF731', secret='cr3MXU2Kbvo104Fd/O54UdbJyWi8dzAxNd5SmsMC')
library(rsconnect)
rsconnect::deployApp('D:/R/R-3.5.0/library/shiny/examples/01_hello')