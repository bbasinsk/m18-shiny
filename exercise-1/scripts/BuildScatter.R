# Function to build a scatterplot

# Write your function to parameterize the following variables:
#   - Data to use
#   - Variable for the x axis
#   - Variable for the y axis
#   - Variable for the color
#   - Title of the plot (set a default of "Title")
#   - Label for the x axis (set a default of "X Title")
#   - Label for the y axis (set a default of "Y Title")

BuildScatter <- function(dataset, my.x, my.y, col, my.title, x.lab, y.lab) {
  library(ggplot2)
  
  plot <- ggplot(data = dataset) +
    geom_point(mapping = aes(
      x = my.x,
      y = my.y,
      color = col
    )) + 
    labs(x = x.lab, y = y.lab, title = my.title)
  
  
  
  # p <- plot_ly(data = dataset, x = ~my.x, y = ~my.y,
  #              marker = list(size = 10,
  #                            color = col)) %>%
  #   layout(title = my.title,
  #          yaxis = list(zeroline = FALSE, title = y.lab),
  #          xaxis = list(zeroline = FALSE, title = x.lab))
  return (plot)
}
