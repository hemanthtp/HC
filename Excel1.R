#Assuming you have a data.frame currently in your r session under object d and you have an Excel workbook saved under c:\mybook.xlsb


# kill an existing Excel process running (if any)
shell("taskkill /im EXCEL.exe /f /t")

# x <- shell("dir", intern = T)

xl.workbook.open("d:\\mybook.xlsb")
xl.workbook.activate("mybook.xlsb")
mybook = xl.get.excel()

# paste the data from dataframe object `d` to the active sheet in cell (1,1) which corresponds to cell A1
xl.write(d,row.names=FALSE,xl.rng=mybook[["Activesheet"]]$Cells(1,1))

# activate a different sheet named 'mysheet'
xl.sheet.activate("mysheet")

# do more stuff with 'mysheet' here...

# save your workbook to a different copy once done
xl.workbook.save("c:\mybook_current_version".xlsb"))

# kill Excel process again to quit Excel 
shell("taskkill /im EXCEL.exe /f /t")
