install.packages("RMySQL")
library(RMySQL)
mydb = dbConnect(MySQL(), user='root', password='', dbname='vendor', host='localhost')
dbListTables(mydb)
dbListFields(mydb, 'erd')

#Running Queries: Queries can be run using the dbSendQuery function.

dbSendQuery(mydb, 'drop table if exists some_table, some_other_table')

#In my experience with this package any SQL query that will run on MySQL will run using this method. 
#Making tables:   We can create tables in the database using R dataframes.

dbWriteTable(mydb, name='table_name', value=data.frame.name) 

#Retrieving data from MySQL:   To retrieve data from the database we need to save a results set object.
rs = dbSendQuery(mydb, "select * from erd")

#I believe that the results of this query remain on the MySQL server, to access the results in R we need to use the fetch function.

data = fetch(rs, n=-1)
#-----------------------------
query<-paste("select * from vendor.erd where EMP_CODE = '210213'") 

rs = dbSendQuery(mydb,query)
dbRows<-dbFetch(rs)

View(dbRows)
