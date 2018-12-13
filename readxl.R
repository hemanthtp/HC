install.packages("colbycol", repos="http://R-Forge.R-project.org")
install.packages("ffbase")
install.packages("rMR")


install.packages("itertools")
library(ff)

library(readxl)
excel_sheets("hyd.xlsx")
mydata <- read_excel("hyd.xlsx", sheet = "Sheet3")
servingcount <- read_excel("Trajectory -ERD as on 13th July 2018.xlsx", sheet = "ERD")
mydata
servingcount
getwd()

library("tibble")
mydata <- as_data_frame(mydata)
servingcount <- as_data_frame(servingcount)
mydata
servingcount

finaldata = merge(mydata, servingcount, by =) 


library("dplyr")
library("xlsx")
#--------------------------------
library(pivottabler)
#mydata[1:5, ]
#slice(mydata, 1:6)
#names(mydata)
mydata1 <- filter(mydata, COM_CODE == "WT01" | COM_CODE ==  "WTCH")
mydata1
#write.csv(mydata1, 'test.csv')
write.xlsx(mydata1, 'test1.xlsx')
