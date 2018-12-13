candidates <- c( Sys.getenv("R_PROFILE"),
                 file.path(Sys.getenv("R_HOME"), "etc", "Rprofile.site"),
                 Sys.getenv("R_PROFILE_USER"),
                 file.path(getwd(), ".Rprofile") )

Filter(file.exists, candidates)

#C:/Users/hemtp/.Rprofile/.Rprofile

devtools::install_github("jalvesaq/colorout") 
install.packages("tufte")
library(tufte)

getwd()
library()
#devtools::use_coverage()
library(blogdown)
blogdown::install_hugo()
setwd("E:/Novartis/Novartis/")
blogdown::serve_site()


blogdown::install_theme('syui/hugo-theme-arch',theme_example =TRUE)
devtools::session_info('blogdown')
blogdown::update_hugo()
blogdown::new_site()
blogdown::build_site() 

build_site()

