library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Basal Metabolic Rate Calculator"),
  sidebarPanel(h3('Enter your values'),
               numericInput('id1', 'Weight in kg', 50, min=0,max=300,step=.01),
               numericInput('id2', 'Age', 20, min =0, max=100, step=1),
               numericInput('id3', 'Height in cm', 150, min=0, max = 700, step=.5),
               submitButton('Submit'),
               ),
  mainPanel(h3("Your BMR"),
            h4("Male BMR"),
            verbatimTextOutput("oid1"),
            h4("Female BMR"),
            verbatimTextOutput("oid2"),
            p("Your BMR is the amount of Calories you would burn in a 24 hour period if you just laid in bed all day.
              BMR is a good metric to be aware of if you are trying to lose or gain weight."))
  ))