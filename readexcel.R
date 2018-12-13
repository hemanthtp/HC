install.packages("xlsx")
library("xlsx")
getwd()
data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)
names(input)
library("readxl")
read_excel_allsheets <- function(filename) {
  sheets <- readxl::excel_sheets(filename)
  x <-    lapply(sheets, function(X) readxl::read_excel(filename, sheet = X))
  names(x) <- sheets
  x
}
sheetnames <- read_excel_allsheets("input.xlsx")
names(sheetnames)
summary(sheetnames)
