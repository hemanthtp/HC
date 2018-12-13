library(RDCOMClient)

# Open a specific workbook in Excel:
xlApp <- COMCreate("Excel.Application")
xlWbk <- xlApp$Workbooks()$Open("E:\\Backup\\Reports\\ZCOP 07-SEP-18 MODEL A.xlsb")

# this line of code might be necessary if you want to see your spreadsheet:
xlApp[['Visible']] <- TRUE 

# Run the macro called "MyMacro":
xlApp$Run("NovFilter")

# Close the workbook and quit the app:
xlWbk$Close(FALSE)
xlApp$Quit()

# Release resources:
rm(xlWbk, xlApp)
gc()