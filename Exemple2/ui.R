# adapted from Markus Gesmann, February 2013
require(shiny)
 
shinyUI(bootstrapPage(
  wellPanel(
    sliderInput("Year", "Election year to be displayed:", 
                min=1932, max=2012, value=2012,  step=4,
                format="###0",animate=TRUE)
  ),
  h3(textOutput("year")), 
  htmlOutput("gvis")
)
)