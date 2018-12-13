authors <- data.frame(
  ## I(*) : use character columns of names to get sensible sort order
  surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  deceased = c("yes", rep("no", 4)))
authorN <- within(authors, { name <- surname; rm(surname) })
View(authors)

books <- data.frame(
  name = I(c("Tukey", "Venables", "Tierney",
             "Ripley", "Ripley", "McNeil", "R Core")),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics ...",
            "LISP-STAT",
            "Spatial Statistics", "Stochastic Simulation",
            "Interactive Data Analysis",
            "An Introduction to R"),
  other.author = c(NA, "Ripley", NA, NA, NA, NA,
                   "Venables & Smith"))
View(books)

(m0 <- merge(authorN, books))
(m1 <- merge(authors, books, by.x = "surname", by.y = "name"))
m2 <- merge(books, authors, by.x = "name", by.y = "surname")
stopifnot(exprs = {
  identical(m0, m2[, names(m0)])
  as.character(m1[, 1]) == as.character(m2[, 1])
  all.equal(m1[, -1], m2[, -1][ names(m1)[-1] ])
  identical(dim(merge(m1, m2, by = NULL)),
            c(nrow(m1)*nrow(m2), ncol(m1)+ncol(m2)))
})

## "R core" is missing from authors and appears only here :
merge(authors, books, by.x = "surname", by.y = "name", all = TRUE)


## example of using 'incomparables'
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5), data = 1:5)
merge(x, y, by = c("k1","k2")) # NA's match
merge(x, y, by = "k1") # NA's match, so 6 rows
merge(x, y, by = "k2", incomparables = NA) # 2 rows









# remove objects or clean up workspace
rm(list = ls())
ls()


setwd("D:/")
dataA <- read.csv("data_sheet1.csv", header = TRUE);
system.time(read.csv("data_sheet1.csv", header = TRUE));
library(data.table)
system.time(fread("data_sheet1.csv"))
library(ff)
system.time(read.csv.ffdf("file = data_sheet1.csv"))
library(sqldf)
system.time(read.csv.sql("data_sheet1.csv"))
library(bigmemory)
system.time(read.big.matrix("data_sheet1.csv", header = TRUE))

  
#https://www.r-bloggers.com/efficiency-of-importing-large-csv-files-in-r/


devtools::install_github("kaneplusplus/bigmemory")
devtools::install_github("ggrothendieck/sqldf")


install.packages("sqldf")
dataB <- read.csv("data_sheet2.csv", header = TRUE) # [ ,1:3];
col1 = 1;
col3 = 3;
modifieddateafile1 = dataB[,c(col1, col3)];

dataC <- read.csv("data_sheet2.csv")
Hemfinal <- merge(dataA, modifieddateafile1, by = "EMP_CODE", all = TRUE)

write.csv(Hemfinal, 'Hemfinal.csv')









dataFile = read.csv("filename.csv",header= TRUE);
#suppose u want col 1, col 9 and col 15 
col1 = 1;
col9 = 9;
col15 = 15;
modifiedDataFile1 = dataFile[,c(col1, col9, col15)];

#if u want rows from 1-100 and then 1000-5000
modifiedDataFile2 = dataFile[c(1:100, 1000:5000), ];

#If u want to select rows and col simultaneously as specified above then 
modifiedDataFile = dataFile[c(1:100, 1000:5000), c(col1, col9, col15)];

