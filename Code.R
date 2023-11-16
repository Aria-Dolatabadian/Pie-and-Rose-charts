library(ggplot2)
library(cowplot)

df <- data.frame(
  variable = rep(c("cat", "mouse", "dog", "bird", "fly")),
  value = c(10, 20, 30, 40, 80)
)

# Create pie chart
pie_chart <- ggplot(df, aes(x = "", y = value, fill = variable)) +
  geom_bar(width = 1, stat = "identity", color = "black") +  # Add black border
  coord_polar("y", start = pi / 3) +
  scale_y_continuous(breaks = seq(0, 80, by = 10)) +  # Adjust tick marks
  ggtitle("Pie Chart")

# Create rose chart
rose_chart <- ggplot(df, aes(x = variable, y = value, fill = variable)) +
  geom_bar(width = 1, stat = "identity", color = "black") +
  coord_polar("y", start = pi / 3) +
  scale_y_continuous(breaks = seq(0, 80, by = 10)) +
  ggtitle("Rose Chart")

# Arrange the two charts side by side
combined_plot <- plot_grid(pie_chart, rose_chart, ncol = 2)

# Print the combined plot
print(combined_plot)
