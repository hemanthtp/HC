#The bar graph of a qualitative data sample consists of vertical parallel bars that
#shows the frequency distribution graphically.

 school = painters$School
 school.freq = table(school)
 
 barplot(school.freq)

  colors = c("red", "yellow", "green", "violet", "orange", "blue", "pink", "cyan")
  barplot(school.freq, col=colors) 