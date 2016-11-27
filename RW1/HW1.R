##############################################################################

library(foreign)

##############################################################################


SPSS = data.frame(read.spss(file="/Users/Sam/Desktop/MathSoftware/RW1/Section1/DATA1.SAV"))
print(SPSS[1:10,])

SPSS$max = apply(SPSS[,c("STATUS", "GRADE")], 1, max)
