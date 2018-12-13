# Category Statistics
#In the data set painters, the painters are classified according to the schools they
#belong. Each school can be characterized by its various statistics, such as its
#mean composition, drawing, coloring or expression scores.
#Find out the mean composition score of school C in the data set painters

 school = painters$School
 c_school = school == "C"
 c_painters = painters[c_school, ]

 mean(c_painters$Composition) 

  tapply(painters$Composition,painters$School, mean) 