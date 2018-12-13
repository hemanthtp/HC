
install_hugo()
setwd("E:/Novartis/blogdown/")


library(blogdown)
blogdown::hugo_version()

blogdown::new_site()
#blogdown::new_site(theme = 'yihui/hugo-lithium')
#http://127.0.0.1:3305
blogdown::install_theme('comfusion/after-dark')
blogdown::serve_site()


serve_site()
stop_server()
install_hugo()
blogdown::hugo_version()

install.packages("rvest")
library(rvest)
