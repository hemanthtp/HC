library(stringi)
library(purrr)
library(dplyr)

stri_read_lines("~/.rstudio-desktop/history_database") %>% 
  stri_split_fixed(":", 2) %>% 
  map_df(function(x) {
    data_frame(ts=as.POSIXct(as.numeric(x[1])/1000, origin="1970-01-01 00:00:00"),
               line=x[2]) %>% 
      mutate(date=as.Date(ts), hour=format(ts, "%H")) %>% 
      select(ts, date, hour, line)
  }) -> hist_db

group_by(hist_db, date, hour)