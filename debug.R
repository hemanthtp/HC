
# debug(functionname)
debug(power)
traceback()

debugonce()
#trace(functionname, edit = true  )
trace(power, edit = TRUE)

#undebug(functionname)
undebug(power)
options(error = recover)
options(error = browser)
options(error = NULL)
# come out of browser()
quit()


require(RCurl)
URL<-"https://wipro365.sharepoint.com/:x:/r/sites/WR-HLS%20-%20Operations/Shared%20Documents/Q2-FY-18-19/6th%20Aug%2718/HEALTH%20ERD,Allocation%20%26%20Validation%20Report%20as%20on%205th%20Aug%2718.xlsb?d=w07a913a93b9a46229991524cc77c6e47&csf=1"
f<-getURL(URL,verbose=T,ssl.verifyhost=F,ssl.verifypeer=F,userpwd="hemtp:dad@1974")
