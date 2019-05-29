


library(data.table)
set.seed(45L)

## Creating a dummy dataset for testing
DT <- data.table(V1=c(1L,2L),V2=LETTERS[1:3],V3=round(rnorm(4),4),V4=1:12)


DT[3:5,]

DT[ V2 == "A"] 

DT[ V2 %in% c("A","C")]

DT[ V4 > 3] 

DT[,V2] 

DT[,.(V2,V3)]

DT[,.(sum(V1),sd(V3))] 

DT[V2=="A" && V2=="C" ,.(sum(V1),sd(V3))] 

DT[V2=="A" && V1>0 ,.(sum(V1),sd(V3))] 

DT[,.(Aggregate = sum(V1),
      Sd.V3 = sd(V3))]

DT[,.(V1, Sd.V3 = sd(V3))]

DT[,{print(V2)
  plot(V3)
  NULL}]

DT[,.(V4.Sum = sum(V4)),by=V1] 

DT[,.(V4.Sum = sum(V4)),by=.(V1,V2)]

DT[,.(V4.Sum = sum(V4)),by=sign(V1-1)]

DT[,.N,by=V1]


DT[, V1 := round(exp(V1),2)] 
DT[, V1 := NULL]

DT[, .(V4.Sum = sum(V4)),by=V1][V4.Sum > 40 ]

setnames(DT,"old","new")

setnames(DT,c("V2","V3"), c("V2.rating","V3.DataCamp"))







