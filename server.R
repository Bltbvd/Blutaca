  server = function(input, output) {
    source(paste(getwd(),"/fserver.R", sep= ""))
    #output$Recomendacion <- renderTable({input$RecomPel}, rownames = FALSE, colnames = FALSE)
    output$Recomendacion <- renderTable({x[x[,2] %in% input$RecomPel,] }, rownames = FALSE, colnames = FALSE)
  }
