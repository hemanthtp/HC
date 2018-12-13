library(RDCOMClient)

OutApp <- COMCreate("Outlook.Application")
outMail = OutApp$CreateItem(0)

# Get signature from outlook
# GetInspector renders the message in html format.
# Note that if you have not created any signatures, this will return blank
outMail$GetInspector()
#Signature <- outMail[["HTMLbody"]]

# Define the body of you email separately
body <- "Define your body here."

outMail[["To"]] = "hemtp@wipro.com"
outMail[["subject"]] = "TEST EMAIL"

# Paste the body and signatures into the email body
#outMail[["HTMLbody"]] = paste0("<p>", body, "</p>", Signature)

# Add your attachment
#outMail[["Attachments"]]$Add("C:\\Users\\Some\\Desktop\\file.csv")


outMail$Send()