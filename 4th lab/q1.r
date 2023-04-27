data <- data.frame(

  fruits = c("Apple", "Banana", "Orange"),
  price = c(10, 20, 30)
)

write.csv(data, "student_info.csv", row.names = FALSE)

rm(data)

data <- read.csv("student_info.csv")

print(data)