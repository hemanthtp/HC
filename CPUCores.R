library(parallel)
detectCores()

library(lme4)
numCores <- detectCores()
numCores

cl <- makeCluster(numCores)


clusterEvalQ(cl, 2 + 2)

stopCluster(cl)