tasks <- taskscheduler_ls()
str(tasks)
print("helloworld")



rm(list = ls())
library(shiny)
library(shinydashboard)

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "Text Scrolling"),
    dashboardSidebar(
      tags$style(".fa-ship {color:#5DADE2}"),
      tags$style(".fa-shopping-cart {color:#5DADE2}"),
      tags$style(".fa-dollar {color:#5DADE2}"),
      tags$style(".fa-keyboard-o {color:#5DADE2}"),
      tags$style(".fa-line-chart {color:#5DADE2}"),
      
      sidebarMenu(
        menuItem("Vessel Line-Up Coal Quantity", tabName = "coal_quantity",
                 icon = icon("ship", lib="font-awesome")),
        
        menuItem("Coal Stocks at Port", tabName = "coal_stocks",
                 icon = icon("fa fa-shopping-cart", lib="font-awesome")),
        
        menuItem("Coal Price", tabName = "coal_quan_price",
                 icon = icon("dollar", lib="font-awesome")),
        
        menuItem("Forecasting Weeks", tabName = "man_input",
                 icon = icon("keyboard-o", lib="font-awesome"),
                 numericInput("forecast_days", "Week ahead forecast:",5, min = 1, max = 500)
        ),
        menuItem(
          HTML('<marquee behavior="scroll" direction="left">Coal Price Forecasting</marquee>'),
          "Coal Price Forecasting", tabName = "coal_forecasting",
          icon = icon("line-chart", class = "fa-spin",lib="font-awesome"))
      )
    ),
    dashboardBody()
  )
)

server <- function(input, output, session){}

shinyApp(ui, server)