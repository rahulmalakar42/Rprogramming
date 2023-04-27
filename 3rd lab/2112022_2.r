library(ggplot2)
ggplot2(data_long,aes(x = year,y = value,col = variable)) + geom_line()
