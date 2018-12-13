
#render("1-example.Rmd")

install.packages("gapminder")
library(gapminder)
data("gapminder")

summary(gapminder)
mean(gapminder$gdpPercap)
attach(gapminder)
median(pop)

data %>%
select(country, continent) %>%
filter(country == "Afghanistan")
  
hist(lifeExp)

library(dplyr)

sessionInfo()

str(titanic)
data("titanic")

library(titanic)
install.packages("titanic")


library(titanic)
knitr::kable(head(titanic_train))