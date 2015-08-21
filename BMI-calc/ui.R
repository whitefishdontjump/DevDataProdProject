library(shiny)
library(markdown)
# Body Mass Index is a calculation of body mass divided by height squared.
# High body mass index values are associated with higher risk of diseases
# including diabetes and heart disease. Low body mass index can also indicate
# poor health and/or diet.
# Source:  https://en.wikipedia.org/wiki/Body_mass_index


# Define UI for dataset viewer application
shinyUI(fluidPage(
      
      # Application title
      titlePanel("Body Mass Index (BMI) Calculator"),
      
      # English units only
      sidebarLayout(
            sidebarPanel(
            
                  numericInput("hgt", "Your height in inches:", 
                               72, min=36, max=96),
                  numericInput("wt", "Your weight in pounds:", 
                               170, min=30, max=450),
                  
                  textOutput("bmi")
            ),
            
            # Show the BMI Calculated result
            mainPanel(
                  
                  
                  includeMarkdown("doc.md")
      
            )
      )
))

includeMarkdown("doc.md")
