source("D:/Troubleshoot.R")

ls() # displace the names of objects in workspace
rm(list = ls()) # deletes all objects from workspace

#https://stackoverflow.com/questions/19226816/how-can-i-view-the-source-code-for-a-function
# Get code of the function
#package:::functionname
#getAnywhere(functionname)
pow:::pow
getAnywhere(pow)

chol2inv
showMethods(chol2inv)
getMethod("chol2inv")

require(raster)
showMethods(extract)
#To see the source code for one of these methods the entire signature must be supplied
getMethod("extract" , signature = c( x = "Raster" , y = "SpatialPolygons") )

list.files()
save(file = "D:/History/workspace.Rdata")
savehistory(file = "D:/History/5aug2018.history")
help(date)

Sys.Date()

