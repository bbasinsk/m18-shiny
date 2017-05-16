# ui.R
library(plotly)

shinyUI(fluidPage(
  mainPanel(
    # tabPanel(
    #   # Add a selectInput (with a proper id) that allows you to select a variable to map
    #   selectInput('map.var', 'Var to map', list('Population' = 'population', 'Votes' = 'votes', 'Ratio' = 'ratio'))
    # ), 
    tabPanel(
      # Use plotlyOutput to show your map
      plotlyOutput('map')
    ) 
  )
))