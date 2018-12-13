library(gifski)
png("frame%03d.png")
par(ask = FALSE)
for(i in 1:10)
  plot(rnorm(i * 10), main = i)
dev.off()
png_files <- sprintf("frame%03d.png", 1:10)
gif_file <- tempfile(fileext = ".gif")
gifski(png_files, gif_file)
utils::browseURL(gif_file)


library(gapminder)
library(ggplot2)
makeplot <- function(){
  datalist <- split(gapminder, gapminder$year)
  lapply(datalist, function(data){
    p <- ggplot(data, aes(gdpPercap, lifeExp, size = pop, color = continent)) +
      scale_size("population", limits = range(gapminder$pop)) + geom_point() + ylim(20, 90) +
      scale_x_log10(limits = range(gapminder$gdpPercap)) + ggtitle(data$year) + theme_classic()
    print(p)
  })
}

# High Definition images:
gif_file <- save_gif(makeplot(), width = 800, height = 450, res = 92)
utils::browseURL(gif_file)