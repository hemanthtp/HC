income_data <- data.frame('FirstName'=c('Joe','Mike','Liv'), 'LastName'=c('Smith','Steel','Storm'), 'Income'=c(100000,20000,80000))
income_data$FirstName <- as.character(income_data$FirstName)
income_data$LastName <- as.character(income_data$LastName)
head(income_data)

 save(income_data,file = "d:/income1.rda")
 load(file = "d:/income1.rda")
 
getwd()
setwd("d:/")

View(income_data)
