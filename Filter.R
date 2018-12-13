library(nycflights13)
library(tidyverse)
library(dplyr)
library(readr)
library(downloader)
demo(scoping)


url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv"
if (!file.exists(filename)) download(url,filename)
msleep <- read.csv("msleep_ggplot2.csv")
head(msleep)
sleepData <- select(msleep, name, sleep_total)
head(sleepData)
head(select(msleep, -name))
