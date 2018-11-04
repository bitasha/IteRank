rm(list=ls())
setwd("~/IteRank")

source(paste(getwd(),'/Common code.R',sep=""))
source(paste(getwd(),'/IteRank2.R',sep=""))



rating<- read.delim(paste(getwd(),'/rating.data',sep=""), header=FALSE)
trdir=paste(getwd(),'/tr-1-10.csv',sep="")
simdir=paste(getwd(),'/sim-tr-1-10.csv',sep="")

rmat=makeRatmat(rating)
usersequence=makeuserSequence(rating);
res2=rankEvaluation_Yu_IteRank(rmat,userSeq = usersequence,trl=10,direc = "~/g-res.csv",firstRun = 1,damping = 0.85,trainflag = 0,trdirec = trdir)

