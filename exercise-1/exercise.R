# Exercise 1: Loading functions

# Set your directory
setwd("~/Cloud Storage/OneDrive - UW Office 365/UW 2016-17/Spring '17/INFO 201/Assignments/Exercises/m18-shiny/exercise-1")

# Source your BuildScatter.r script, exposing your BuildScatter function
source(file = 'scripts/BuildScatter.R')

# Use your BuildScatter function to draw a well labeled ggplot scatterplot of the iris data
data(iris)
BuildScatter(iris, iris$Sepal.Length, iris$Petal.Length, 'rgba(255, 182, 193, .9)', 'Iris Scatter', 'Sepel Length', 'Petal Length')
