library(faraway)

data(pima)
pima[1:5,]

print("##########################################################################")

summary(pima)

print("##########################################################################")

hist(pima$diastolic, prob=T, ylim=c(0,0.04), main="Histogram of Diastolic")
lines(density(pima$diastolic))

print("##########################################################################")

boxplot(pima, main="Pima")
boxplot(pima$diastolic, main="Distolic")

print("##########################################################################")

par(mfrow=c(3,2))
boxplot(pima$pregnant, main="pregnant")
boxplot(pima$glucose, main="glucose")
boxplot(pima$diastolic, main="diastolic")
boxplot(pima$triceps, main="triceps")
boxplot(pima$insulin, main="insulin")
boxplot(pima$diabetes, main="diabetes")

print("##########################################################################")

par(mfrow=c(2,1))
hist(pima$triceps, prob=T, ylim=c(0,0.04), main="Histogram of Triceps")
lines(density(pima$triceps), col="red")
boxplot(pima$triceps, main="triceps")

print("##########################################################################")

data(gala)
head(gala)
dim(gala)

print("##########################################################################")

lmod=lm(Species ~ Area + Elevation + Nearest + Scruz + Adjacent, gala)
summary(lmod)

print("##########################################################################")

plot(gala$Species, , xlab="observation", ylab="data", ylim=c(min(gala$Species, lmod$fitted.values), max(gala$Species, lmod$fitted.values)))
lines(lmod$fitted.values, col="red")
points(lmod$fitted.values, col="red", pch=16)
legend(locator(1), c("raw data", "fitted values"), pch=c(1,16), lty=c(NA,6), col=c("black", "red"))

print("##########################################################################")

# TEST if Beta(Area) == Beta(Adjacent)

lmod2 = lm(Species ~ I(Area + Adjacent) + Elevation + Nearest + Scruz, gala)
anova(lmod, lmod2)

print("##########################################################################")
