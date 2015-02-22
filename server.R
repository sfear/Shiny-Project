bmrM <- function(weight, age, height){
    10*weight + 6.25*height - 5*age + 5
}

bmrF <- function(weight, age, height){
  10*weight + 6.25*height - 5*age -161
}


library(shiny)
shinyServer(
  function(input,output){
      output$oid1 <- renderPrint({bmrM(input$id1, input$id2, input$id3)})
      output$oid2 <- renderPrint({bmrF(input$id1, input$id2, input$id3)})
  }
)