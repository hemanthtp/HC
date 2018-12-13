install.packages("devtools")
devtools::install_github('apache/spark@v2.3.1', subdir='R/pkg')
devtools::install_github("rstudio/sparklyr")

Sys.getenv("SPARK_HOME")
Sys.getenv("JAVA_HOME")

ip <- installed.packages()
ip[ rownames(ip) == "sparklyr", c(0,1,3) ]
#sparkR.session()

#version <- invoke(spark_context(sc), "version")
#Sys.setenv(SPARK_HOME='D:\\R\\R-3.5.1\\library\\SparkR')
java_path <- normalizePath('D:/Java/jre')
spark_path <- normalizePath('D:/Spark')


Sys.setenv(JAVA_HOME=java_path)
Sys.setenv(SPARK_HOME=spark_path)



#java_path <- normalizePath('D:/Java/jdk1.8.0_181/bin/')
#java_path <- normalizePath('D:/Java/jdk1.8.0_181/')


#-----------------------------------Start here 
library(SparkR)
library(sparklyr)
library(dplyr)
library(Lahman)
library(nycflights13)

iris_tbl <- copy_to(sc, iris)
flights_tbl <- copy_to(sc, nycflights13::flights, "flights")
batting_tbl <- copy_to(sc, Lahman::Batting, "batting")
src_tbls(sc)


flights_tbl %>% filter(dep_delay == 2)

#---------------------------------------
library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))

if (nchar(Sys.getenv("SPARK_HOME")) < 1) { Sys.setenv(SPARK_HOME = "D:\\Spark") } library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))

sparkR.session(master = "local[*]", sparkConfig = list(spark.driver.memory = "2g"))

sc <- spark_connect(master = "local")
connection_is_open(sc)
spark_version(sc)


df <- as.DataFrame(faithful)

#-----------
library('magrittr')
library('ggplot2')

df <- as.DataFrame(mtcars)
model <- glm(mpg ~ wt, data = df, family = "gaussian")
summary(model)



pacman::p_load(sparklyr,tidyverse)
library(dplyr)
conf <- spark_config()



spark_disconnect_all()

