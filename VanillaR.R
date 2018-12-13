 .Last <- function() system("R --vanilla")
 q("no")
 
 
 wd <- getwd()
 setwd(tempdir())
 assign(".First", function() {
   #require("yourPackage") 
   file.remove(".RData") # already been loaded
   rm(".Last", pos=.GlobalEnv) #otherwise, won't be able to quit R without it restarting
   setwd(wd)
   ## Add your code here
   message("my code is running.\n")
 }, pos=.GlobalEnv)
 
 assign(".Last", function() {
   system("R --no-site-file --no-environ --quiet")
 }, pos=.GlobalEnv)
 save.image() # so we can load it back when R restarts
 q("no")