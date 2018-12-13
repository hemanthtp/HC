library(notifier)

setwd("D:/R/R-3.5.1/library/rlang/help/figures/") 
notify(
  title = "15 Packages out of date",
  msg = c("You can run update.packages() to update them.",
          "Outdated packages: Boom colorspace desc memuse networkD3",
          "pbapply revealjs rgl rmdformats timevis and 5 more"),
 
  )
image = "rlang.png"

help(notify)
install.packages("remindR")
library(worktimr)
remind(myfunc) <- "This is something I want to pay attention to"
devtools::install_github("anhinton/worktimr")
worktimr::workTimer(minutes = 5)

#--------------------------------
setwd("D:/Notifiction/")
system("Sample.bat")
shell.exec("D:/Notifiction/notifu.exe" /v)
