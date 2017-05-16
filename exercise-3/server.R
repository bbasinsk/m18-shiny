# server.R
library(shiny)
library(dplyr)
library(plotly)

# Read in data
setwd("~/Cloud Storage/OneDrive - UW Office 365/UW 2016-17/Spring '17/INFO 201/Assignments/Exercises/m18-shiny/exercise-3")
source('./scripts/buildMap.R')
df <- read.csv('./data/electoral_college.csv', stringsAsFactors = FALSE)
state.codes <- read.csv('./data/state_codes.csv', stringsAsFactors = FALSE)

# Join together state.codes and df
joined.data <- left_join(df, state.codes, by="state")

# Compute the electoral votes per 100K people in each state
joined.data <- joined.data %>% mutate(ratio = votes/population * 100000)

# Start shinyServer
shinyServer(function(input, output) { 
  
  # Render a plotly object that returns your map
  output$map <- renderPlotly({
      pop <- eval(parse(text = input$selected))
      return(BuildMap(joined.data, 'population'))
  })
})