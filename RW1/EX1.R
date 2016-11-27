library(foreign)

separator = "-------------------------------------------------------------------"

EX1 = read.table(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/TESTDat.txt", header=T, sep="",nrows=10)
print(EX1)

print(separator)

EX1s = read.table(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/TESTDat.txt", header=F, sep="",nrows=10)
print(EX1s)

print(separator)

EXrownames = read.table(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/TESTDat.txt", header=T, sep="", nrows = 5, col.names= c("SEX", "AGE", "YEAR", "DEAD", "POP"), row.names = c("A", "B", "C", "D", "E"))
print(EXrownames)

print(separator)

EX3 = read.csv(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/TESTDat.csv", nrows = 5)
print(EX3)

print(separator)

EXscan1 = scan(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/MatX.txt")
print(EXscan1)

write.table(EX1, "EX1.csv", row.names=F, sep=",")

print(separator)

SPSS1 = data.frame(read.spss(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/DATA1.SAV"))
print(SPSS1)

print(separator)

Mat1 = matrix(data=EXscan1, nrow = 4, ncol = 3, byrow=T)
print(Mat1)

print(separator)

print(SPSS1[1:5,])

print(separator)

print(SPSS1[SPSS1[, "AGE"] > 45,])

print(separator)

print(SPSS1[SPSS1[, "AGE"] > 45 & SPSS1[, "INCOME"] > 5000,])

print(separator)

addmargins(table(SPSS1$SEX, SPSS1$EDUC))

print(separator)

addmargins(table(SPSS1$SEX, SPSS1$EDUC), margin=2)

print(separator)

prop.table(addmargins(table(SPSS1$SEX, SPSS1$EDUC), 2), 2)

print(separator)

ftable(SPSS1$SEX, SPSS1$EDUC, SPSS1$STATUS)

print(separator)

sapply(SPSS1[, c(3,6:7)], mean)

print(separator)

sapply(SPSS1[, c(3,6:7)], sd)

print(separator)

sapply(SPSS1[, c(3,6:7)], range)

print(separator)

sapply(SPSS1[, c(3,6:7)], quantile)

print(separator)

tapply(SPSS1$INCOME,SPSS1$SEX,mean)

print(separator)

round(tapply(SPSS1$INCOME,SPSS1$SEX,mean), 1)

print(separator)

SPSS1$SEX = ifelse(SPSS1$SEX=="Male", 1, 2)
print(SPSS1[1:5,])

print(separator)

SPSS1$INCOME_LOG = log(SPSS1$INCOME)
print(SPSS1[1:5,])

print(separator)

SPSS1$INCOME = NULL
print(SPSS1[1:5,])

print(separator)

SPSS1$GROUP = ifelse(SPSS1$AGE<31, 1, ifelse(SPSS1$AGE<61, 2, 3))
print(SPSS1[1:5, c("AGE", "GROUP")])


print(SPSS1[SPSS1$AGE<30, c("AGE", "GROUP")])
