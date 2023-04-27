# Histograms can be classified based on the shape of their tails. There are three main types of tailed histograms: long-tailed, short-tailed, and skewed-tailed.

#     Long-tailed histogram: A long-tailed histogram has a tail that extends far from the central peak, indicating a higher number of outliers in the data.

# # Generate a random long-tailed data
# long_tailed_data <- rgamma(1000, 2, 0.1)

# # Create a long-tailed histogram using ggplot2
# library(ggplot2)
# ggplot(data = data.frame(x = long_tailed_data), aes(x)) +
#   geom_histogram(binwidth = 0.1, fill = "blue", alpha = 0.5) +
#   ggtitle("Long-tailed Histogram")

# Short-tailed histogram: A short-tailed histogram has a tail that does not extend very far from the central peak, indicating a lower number of outliers in the data.

# # Generate a random short-tailed data
# short_tailed_data <- rnorm(1000, 5, 1)

# # Create a short-tailed histogram using ggplot2
# library(ggplot2)
# ggplot(data = data.frame(x = short_tailed_data), aes(x)) +
#   geom_histogram(binwidth = 0.1, fill = "green", alpha = 0.5) +
#   ggtitle("Short-tailed Histogram")

# Skewed-tailed histogram: A skewed-tailed histogram has a tail that extends more to one side of the central peak than the other, indicating a bias in the data.
# # Generate a random skewed-tailed data
# skewed_tailed_data <- rbeta(1000, 0.5, 2)

# # Create a skewed-tailed histogram using ggplot2
# library(ggplot2)
# ggplot(data = data.frame(x = skewed_tailed_data), aes(x)) +
#   geom_histogram(binwidth = 0.1, fill = "orange", alpha = 0.5) +
#   ggtitle("Skewed-tailed Histogram")


# load necessary libraries
library(ggplot2)
library(reshape2)

# create sample data
set.seed(123)
date <- seq(as.Date("2022/01/01"), by = "day", length.out = 30)
value1 <- rnorm(30, mean = 10, sd = 2)
value2 <- rnorm(30, mean = 20, sd = 4)
value3 <- rnorm(30, mean = 15, sd = 3)
data <- data.frame(date, value1, value2, value3)

# reshape data into long format
data_long <- melt(data, id.vars = "date")

# plot time series using ggplot2
ggplot(data_long, aes(x = date, y = value, color = variable)) +
  geom_line() +
  labs(title = "Multiple Time Series Plot",
       x = "Date",
       y = "Value") +
  scale_color_manual(values = c("#E69F00", "#56B4E9", "#009E73")) # custom color palette
