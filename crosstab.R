library(expss)
data(mtcars)
mtcars = apply_labels(mtcars,
                      mpg = "Miles/(US) gallon",
                      cyl = "Number of cylinders",
                      disp = "Displacement (cu.in.)",
                      hp = "Gross horsepower",
                      drat = "Rear axle ratio",
                      wt = "Weight (1000 lbs)",
                      qsec = "1/4 mile time",
                      vs = "Engine",
                      vs = c("V-engine" = 0,
                             "Straight engine" = 1),
                      am = "Transmission",
                      am = c("Automatic" = 0,
                             "Manual"=1),
                      gear = "Number of forward gears",
                      carb = "Number of carburetors"
)
cro(mtcars$am, mtcars$vs)
cro_cpct(mtcars$cyl, list(total(), mtcars$am, mtcars$vs))
mtcars %>% calc_cro_cpct(cyl, list(total(), am %nest% vs))



library(expss)
w = from_text("
        a  b  c
        2 15 50
        1 70 80
        3 30 40
        2 30 40
")
w$d = ifelse(w$b>60, 1, 0)

w = compute(w, {
  d = ifelse(b>60, 1, 0)
  e = 42
  abc_sum = sum_row(a, b, c)
  abc_mean = mean_row(a, b, c)
})

calculate(w, count_if(1, a, b, c))

count_col_if(le(1), w$a)
sum(w, na.rm = TRUE)
w$d = mean_row(w)  
sum_col(w$a)

#---- Vlookup
dict = from_text("
    x  y
    1  apples
    2  oranges
    3  peaches
")

w$d = vlookup(w$a, dict, 2)
w$d
