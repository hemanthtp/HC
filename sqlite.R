library(Rcpp)
install.packages("digest")

library(RSQLite)
setwd("E:/sqlite/sqlitedb")
db<-dbConnect(SQLite(),dbname="test.db")
dbListTables(db)                
dbListFields(db,"test")
a_data <- dbGetQuery(db,"select * from test")
a_data
dbDisconnect(db)