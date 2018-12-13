install.packages("rio")
library("rio")
install_formats()

Rscript -e "rio::convert('erd.csv', 'mtcars.xlsx')"

library(reshape2)
install.packages('reshape')
install.packages("rpivotTable")
library(rpivotTable)
data(mtcars)
rpivotTable(mtcars,rows="gear", cols=c("cyl","carb"),width="100%", height="400px")
