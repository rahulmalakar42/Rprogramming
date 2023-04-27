x <- c(151, 174, 130, 140, 150)
y <- c(63, 82, 48, 50, 60)

# Apply the lm() function.
relation <- lm(y~x)

print(relation)
a <- data.frame(x = 155)
result <-  predict(relation,a)
print(result)
print("scholar id - 2112022")