install.packages("excel.link")
library(excel.link)
data(iris)
data(cars)
xl.workbook.add()
xlrc[a1] = iris
xl.workbook.save("iris.xlsx")

library(RDCOMClient)
ex <- COMCreate("Excel.Application")
ex[["Visible"]]
ex[["Visible"]] <- TRUE


library(RDCOMClient)

xl <- COMCreate("Excel.Application")
xl[["Visible"]] <- TRUE
wkbk <- xl$Workbooks()$Add()
sheet <- xl$ActiveSheet()

x12 <- sheet$Cells(1,2)
x12[["Value"]] <- 123
x12[["Interior"]][["ColorIndex"]] <- 3  # Red