library(ggplot2)
library(reshape2)
library(dplyr)

covid1 =(read.csv(file="E:/NIT/Study/4th sem/#labs/applied probability lab/3rd lab/EUCOVIDdeaths.csv",header=TRUE)[,-c(2)])

head(covid1)

covid_deaths <- melt(covid1,id.vars=c("Country"),value.name="value",
                     variable.name="Day")

head(covid_deaths)

covid_plot <- ggplot(data=covid_deaths, aes(x=Day, y=value, group = Country,
                                            colour = Country)) + geom_line() + labs(y= "Deaths", x = "Day")
covid_plot + ggtitle("Daily Deaths for European countries in March,2020")+geom_point()

covid_plot
