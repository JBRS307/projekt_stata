library(stats)
library(smoof)
source("prs.r")
source("ms.r")


# results <- replicate(50, prs(makeAckleyFunction(20), generatePoints(14, 20, -32.768, 32.768)))
# 
# print("PRS, 20 wymiarów:")
# print(mean(results))

compar <- function(fn, dimensions, bounds) {
  print(paste("Wymiary:", dimensions))
  msRes <- replicate(100, calcMS(100, dimensions, bounds[1], bounds[2], fn))
  
  value <- mean(msRes[1,])
  budget <- round(mean(msRes[2,]))
  
  print("MS:")
  print(paste("Średnia wartość:", value))
  print(paste("Budżet:", budget))
  
  prsValue <- mean(replicate(100, prs(fn, generatePoints(budget, dimensions, bounds[1], bounds[2]))))
  
  print("---------")
  print("PRS:")
  print(paste("Średnia wartość:", prsValue))
}

ackleyBounds <- c(-32.768, 32.768)
print("Funkcja Schwefela")
compar(makeAckleyFunction(2), 2, ackleyBounds)
print("========================")
compar(makeAckleyFunction(10), 10, ackleyBounds)
print("========================")
compar(makeAckleyFunction(20), 20, ackleyBounds)

print("")

rastriginBounds <- c(-5.12, 5.12)
print("Funkcja Rastrigina")
compar(makeRastriginFunction(2), 2, rastriginBounds)
print("========================")
compar(makeRastriginFunction(10), 10, rastriginBounds)
print("========================")
compar(makeRastriginFunction(20), 20, rastriginBounds)