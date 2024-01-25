library(stats)
library(smoof)
source("prs.r")
source("ms.r")

compar <- function(fn, dimensions, bounds) {
  print(paste("Wymiary:", dimensions))
  msRes <- replicate(100, calcMS(100, dimensions, bounds[1], bounds[2], fn))
  
  msValue <- msRes[1,]
  budget <- round(mean(msRes[2,]))
  
  print("MS:")
  print(paste("Średnia wartość:", mean(msValue)))
  print(paste("Budżet:", budget))
  
  prsValue <- replicate(100, prs(fn, generatePoints(budget, dimensions, bounds[1], bounds[2])))
  
  print("---------")
  print("PRS:")
  print(paste("Średnia wartość:", mean(prsValue)))
  
  return (list(msValue, prsValue))
}

ackleyBounds <- c(-32.768, 32.768)
print("Funkcja Ackleya")
ackley2D <- compar(makeAckleyFunction(2), 2, ackleyBounds)
ackley2Dms <- ackley2D[[1]]
ackley2Dprs <- ackley2D[[2]]

write.csv(ackley2Dms, file = "./data/ackley2Dms.csv", row.names = FALSE)

write.csv(ackley2Dprs, file = "./data/ackley2Dprs.csv", row.names = FALSE)

print("========================")
ackley10D <- compar(makeAckleyFunction(10), 10, ackleyBounds)
ackley10Dms <- ackley10D[[1]]
ackley10Dprs <- ackley10D[[2]]

write.csv(ackley10Dms, file = "./data/ackley10Dms.csv", row.names = FALSE)

write.csv(ackley10Dprs, file = "./data/ackley10Dprs.csv", row.names = FALSE)

print("========================")
ackley20D <- compar(makeAckleyFunction(20), 20, ackleyBounds)
ackley20Dms <- ackley20D[[1]]
ackley20Dprs <- ackley20D[[2]]

write.csv(ackley20Dms, file = "./data/ackley20Dms.csv", row.names = FALSE)

write.csv(ackley20Dprs, file = "./data/ackley20Dprs.csv", row.names = FALSE)

print("")

rastriginBounds <- c(-5.12, 5.12)
print("Funkcja Rastrigina")
rastrigin2D <- compar(makeRastriginFunction(2), 2, rastriginBounds)
rastrigin2Dms <- rastrigin2D[[1]]
rastrigin2Dprs <- rastrigin2D[[2]]

write.csv(rastrigin2Dms, file = "./data/rastrigin2Dms.csv", row.names = FALSE)

write.csv(rastrigin2Dprs, file = "./data/rastrigin2Dprs.csv", row.names = FALSE)

print("========================")
rastrigin10D <- compar(makeRastriginFunction(10), 10, rastriginBounds)
rastrigin10Dms <- rastrigin10D[[1]]
rastrigin10Dprs <- rastrigin10D[[2]]

write.csv(rastrigin10Dms, file = "./data/rastrigin10Dms.csv", row.names = FALSE)

write.csv(rastrigin10Dprs, file = "./data/rastrigin10Dprs.csv", row.names = FALSE)

print("========================")
rastrigin20D <- compar(makeRastriginFunction(20), 20, rastriginBounds)
rastrigin20Dms <- rastrigin20D[[1]]
rastrigin20Dprs <- rastrigin20D[[2]]

write.csv(rastrigin20Dms, file = "./data/rastrigin20Dms.csv", row.names = FALSE)

write.csv(rastrigin20Dprs, file = "./data/rastrigin20Dprs.csv", row.names = FALSE)
