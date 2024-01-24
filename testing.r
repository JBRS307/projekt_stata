a2msAVG <- as.vector(read.csv("./data/ackley2DmsAVG.csv"))$x
a2prsAVG <- as.vector(read.csv("./data/ackley2DprsAVG.csv"))$x
a10msAVG <- as.vector(read.csv("./data/ackley10DmsAVG.csv"))$x
a10prsAVG <- as.vector(read.csv("./data/ackley10DprsAVG.csv"))$x
a20msAVG <- as.vector(read.csv("./data/ackley20DmsAVG.csv"))$x
a20prsAVG <- as.vector(read.csv("./data/ackley20DprsAVG.csv"))$x
r2msAVG <- as.vector(read.csv("./data/rastrigin2DmsAVG.csv"))$x
r2prsAVG <- as.vector(read.csv("./data/rastrigin2DprsAVG.csv"))$x
r10msAVG <- as.vector(read.csv("./data/rastrigin10DmsAVG.csv"))$x
r10prsAVG <- as.vector(read.csv("./data/rastrigin10DprsAVG.csv"))$x
r20msAVG <- as.vector(read.csv("./data/rastrigin20DmsAVG.csv"))$x
r20prsAVG <- as.vector(read.csv("./data/rastrigin20DprsAVG.csv"))$x

a2ms <- as.vector(read.csv("./data/ackley2Dms.csv"))$x
a2prs <- as.vector(read.csv("./data/ackley2Dprs.csv"))$x
a10ms <- as.vector(read.csv("./data/ackley10Dms.csv"))$x
a10prs <- as.vector(read.csv("./data/ackley10Dprs.csv"))$x
a20ms <- as.vector(read.csv("./data/ackley20Dms.csv"))$x
a20prs <- as.vector(read.csv("./data/ackley20Dprs.csv"))$x
r2ms <- as.vector(read.csv("./data/rastrigin2Dms.csv"))$x
r2prs <- as.vector(read.csv("./data/rastrigin2Dprs.csv"))$x
r10ms <- as.vector(read.csv("./data/rastrigin10Dms.csv"))$x
r10prs <- as.vector(read.csv("./data/rastrigin10Dprs.csv"))$x
r20ms <- as.vector(read.csv("./data/rastrigin20Dms.csv"))$x
r20prs <- as.vector(read.csv("./data/rastrigin20Dprs.csv"))$x


print(t.test(x = a10prs, y = a10ms, paired = TRUE))

