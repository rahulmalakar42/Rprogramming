print("scholar id - 2112022")

scores <- c(58, 64, 93, 71, 67, 85,
            71, 93, 82, 81, 75, 78, 86, 90,87)
quantile(scores)

weights <- c(50, 65,
             72, 62, 77, 84, 57, 74, 66, 68, 75, 58, 52, 69,87)
quantile(weights, prob = seq(0, 1, length = 11), type = 5)

power.prop.test(n=28 , p1=0.3 ,p2=0.55 ) 

power.prop.test(power=0.65 , p1=0.25 ,p2=0.45 )