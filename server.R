  server = function(input, output) {
    source("C:/Users/SANDRO/Documents/shiny_blutaca/fserver.R")
    #output$Recomendacion <- renderTable({input$RecomPel}, rownames = FALSE, colnames = FALSE)
    output$Recomendacion <- renderTable({x[x[,2] %in% input$RecomPel,] }, rownames = FALSE, colnames = FALSE)
  }
  

