#Quantitative data, also known as continuous data, consists of numeric data that
#support arithmetic operations

head(faithful)
duration = faithful$eruptions
range(duration)
breaks = seq(1.5, 5.5, by=0.5)
breaks

duration.cut = cut(duration, breaks, right=FALSE)
duration.freq = table(duration.cut)
duration.freq

cbind(duration.freq)


install.packages("e1071", dep = TRUE) 
library(e1071)
duration = faithful$eruptions
moment(duration, order=3, center=TRUE)


 library(e1071)
 duration = faithful$eruptions
 kurtosis(duration)
 
 
 dbinom(4, size=12, prob=0.2)

 install.packages("TeachingDemos", dep = TRUE) 
  library(TeachingDemos) 
 install.packages("R2OpenBUGS", dep = TRUE) 
  library(R2OpenBUGS) 
 library(coda)
 
 install.packages("rpud", dep = TRUE) 
 library(rpud) 
 library(vbmp) 
 library(Biobase) 
 
 
 install.packages("Biobase", dep = TRUE) 
 