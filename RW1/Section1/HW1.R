library(foreign)

EX1=read.table(file="Exercise1P1.txt",header=T,sep="",nrows=10)
EX1[1:10,]

EX1[,"LogT"] = log(EX1[, "TOTAL"])
EX1[1:5,c("ID", "GRADE")]


Exer2D=data.frame(read.spss("Exercise1P2.SAV"))
sapply(Exer2D,quantile)

lapply(Exer2D,quantile)

Exer2D$MAX= apply(Exer2D [,c("A", "B","C")], 1, max)
Exer2D$MIN= apply(Exer2D [,c("A", "B","C")], 1, min)
Exer2D

Exer2New=Exer2D[,c("MIN", "MAX")]

Exer2New2=data.frame(MAX=Exer2D$MAX,DIF=Exer2D$MAX-Exer2D$MIN,SUM=Exer2D$MAX+Exer2D$MIN)

Exer2New2

Exer2Merge=merge(Exer2New,Exer2New2)

Exer2Merge

write.table(data.matrix(Exer2Merge),file="EXer2Mat.txt",sep=" ",row.names=F)


EX1P3 = read.table(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/Exercise1P3.txt", header=T, sep="")
table(EX1P3$SEX,EX1P3$EDU)

addmargins(table(EX1P3$SEX,EX1P3$EDU),margin=1)

addmargins(table(EX1P3$SEX,EX1P3$EDU),margin=2)


prop.table(table(EX1P3$SEX,EX1P3$EDU),1)

prop.table(table(EX1P3$SEX,EX1P3$EDU),2)

ftable(EX1P3$SEX,EX1P3$EDU,EX1P3$STATUS)

P3list<-list(ID=1:5,SEX=c("M","M","F","M","F"),EDUC=c(25,32,44,18,38))
P3list

P3L1= list(ID=EX1P3$ID,INCOME=EX1P3$INCOME,GRADE=EX1P3$GRADE)
P3L1

P3L1D1=data.frame(P3L1)
P3L1D1

P1L1D2=data.frame(P3L1,EDUC=EX1P3$EDUC,STATUS=EX1P3$STATUS,NUMB=1:nrow(P3L1D1))
P1L1D2

merge(P3L1D1,P1L1D2,by.x="ID",by.y="NUMB")
