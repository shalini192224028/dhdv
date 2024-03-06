library(ggplot2)

# Creating data for the graph
data_frame <- data.frame(dose = c("D0.5", "D1", "D2"), len = c(4.2, 10, 29.5))
head(data_frame)

# Saving the plot to a PNG file
png(file = "multi_line_graph2.png")

# Basic line plot with points
ggplot(data = data_frame, aes(x = dose, y = len, group = 1)) +
  geom_line() +
  geom_point()

# Change the line type
ggplot(data = data_frame, aes(x = dose, y = len, group = 1)) +
  geom_line(linetype = "dashed") +
  geom_point()

# Change the color
ggplot(data = data_frame, aes(x = dose, y = len, group = 1)) +
  geom_line(color = "red") +
  geom_point()

# Saving the plot
dev.off()
