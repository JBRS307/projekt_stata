library(stats)
library(smoof)
source("prs.r")
source("ms.r")


# results <- replicate(50, prs(makeAckleyFunction(20), generatePoints(14, 20, -32.768, 32.768)))
# 
# print("PRS, 20 wymiarów:")
# print(mean(results))


msRes <- replicate(50, calcMS(100, 2, -32.768, 32.768, makeAckleyFunction(2)))

value <- mean(msRes[1,])
budget <- round(mean(msRes[2,]))

print(value)
print(budget)

