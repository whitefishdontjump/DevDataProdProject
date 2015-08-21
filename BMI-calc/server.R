library(shiny)
library(markdown)

# Calculate the BMI, determine if in normal range and offer advice
shinyServer(function(input, output) {
      
     
      
      # Calculate bmi
      output$bmi <- renderText({
            paste("Your BMI is", round(703*input$wt/(input$hgt^2),2))
      })

      
})

