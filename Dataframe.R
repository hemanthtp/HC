n = c(2, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b)
df

df$x <- paste(df$n,df$s)

df$x <- paste(df$n,"-",df$s) #for inserting a separator.
df$x

df$b
#-----------
library(dplyr)
df <- mutate(df, x = paste(n, s)) 

df 
