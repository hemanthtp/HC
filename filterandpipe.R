library(readr)
flight <- read_csv("D:/airlines.csv")

library(dplyr)

flight %>% 
  summarize(unique_carriers = n_distinct(CARRIER))

flight %>% 
  group_by(CARRIER) %>% 
  summarize(counts = n())

flight %>% 
  select(CARRIER, ORIGIN, ORIGIN_CITY_NAME, ORIGIN_STATE_ABR) %>%
  filter(CARRIER == "UA")


flight %>% 
  select(CARRIER, ORIGIN, ORIGIN_CITY_NAME, ORIGIN_STATE_ABR) %>%
  filter(CARRIER == "UA" & ORIGIN == "SFO")


flight %>% 
  select(CARRIER, ORIGIN, ORIGIN_CITY_NAME, ORIGIN_STATE_ABR) %>%
  filter(CARRIER %in% c("UA", "AA"))  %>% 
count(CARRIER)


pi  %>% sin  %>% cos
x = 10
log(x)

x %>% log()

1:10 %>>% (function(x,pow) x^pow)(2)


library(pipeR)
set.seed(123)
rnorm(100, mean = 10) %>>%
  log %>>%
  diff %>>%
  sample(size = 10000, replace = TRUE) %>>%
  summary
#----------------------

mtcars$mpg %>>%
  plot


mtcars$mpg %>>%
  plot(col="red")

mtcars$mpg %>>%
  stats::median()

# Pipe to dot
mtcars %>>%
{ lm(mpg ~ cyl + wt, data = .) }

mtcars %>>%
  ( lm(mpg ~ cyl + wt, data = .) )


mtcars %>>% 
  lm(formula = mpg ~ wt + cyl) %>>%
  summary %>>% {
    if(.$r.squared >= 0.8) {
      return("Model A")
    }
    cat("Model B should be considered.\n")
    "Model B"
  }

#-------------
library(dplyr)

starwars %>% 
  filter(species == "Droid")

starwars


starwars %>% 
  select(name, ends_with("color"))


library(rlist)
devs <- 
  list(
    p1=list(name="Ken",age=24,
            interest=c("reading","music","movies"),
            lang=list(r=2,csharp=4)),
    p2=list(name="James",age=25,
            interest=c("sports","music"),
            lang=list(r=3,java=2,cpp=5)),
    p3=list(name="Penny",age=24,
            interest=c("movies","reading"),
            lang=list(r=1,cpp=4,python=2)))


library(pipeR)
devs %>>% 
  list.filter("music" %in% interest & "r" %in% names(lang)) %>>%
  list.select(name,age) %>>%
  list.stack



library(rvest)
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")

rating <- lego_movie %>% 
  html_nodes("strong span") %>%
  html_text() %>%
  as.numeric()
rating
#> [1] 7.8

cast <- lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
cast