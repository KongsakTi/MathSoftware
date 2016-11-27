# Aj email = j.suntornchost@gmail.com
library(MASS)
Avec = c(1,2,3,5)
Avec

t(Avec)

Bvec = c(3,5,7,1)
Bvec

t(Bvec)

Avec * Bvec

print("##########################################################################")

print("This is norm of Avec")
sqrt(sum(Avec*Avec))
print("##########################################################################")

print("rep(x, t), x = 0, t = 5")
rep(0,5)
print("##########################################################################")

print("matrix(seq, nrow, byrow)")
XMAT = matrix(1:12, nrow=3, byrow=T)
XMAT
print("##########################################################################")

print("[M] x [M]")
XMAT2 = XMAT %*% t(XMAT)
XMAT2
print("##########################################################################")

print("Diagonal of [M]")
diag(XMAT2)
print("##########################################################################")

print("Diagonal Matrix of [M]")
AMAT = diag(diag(XMAT2))
AMAT
print("##########################################################################")

print("Find [M] inverse")
AMATI = solve(AMAT)
AMATI
print("##########################################################################")

print("Find [M] generalize inverse; AGA = A")
AMATI = ginv(AMAT)
AMATI
print("##########################################################################")

S1 = cbind(c(1,1,0), c(0,1,0), c(1,0,1))
GV1 = S1[,1]
GV2 = S1[,2] - sum(GV1 * S1[,2])/sum(GV1 * GV1) * GV1
GV3 = S1[,3] - sum(GV1 * S1[,3])/sum(GV1 * GV1) * GV1 - sum(GV2 * S1[,3])/sum(GV2 * GV2) * GV2
G1 = cbind(GV1, GV2, GV3)
G1

S2 = cbind(c(1,1,0,1), c(1,2,1,0), c(0,1,2,1), c(1,0,1,1))
GV1 = S2[,1]
GV2 = S2[,2] - sum(GV1 * S2[,2])/sum(GV1 * GV1) * GV1
GV3 = S2[,3] - sum(GV1 * S2[,3])/sum(GV1 * GV1) * GV1 - sum(GV2 * S2[,3])/sum(GV2 * GV2) * GV2
GV4 = S2[,4] - sum(GV1 * S2[,4])/sum(GV1 * GV1) * GV1 - sum(GV2 * S2[,4])/sum(GV2 * GV2) * GV2 - sum(GV3 * S2[,4])/sum(GV3 * GV3) * GV3
G2 = cbind(GV1, GV2, GV3, GV4)
G2

print("##########################################################################")

library(lpSolve)

obj.fun = c(20, 60)
constr = matrix(c(30, 20, 5, 10, 1, 1, 1, 0, 0, 1), ncol = 2, byrow=T)
constr.dir = c("<=", "<=", ">=", ">=", ">=")
rhs = c(2700, 850, 95, 0, 0)
prod.sol = lp("max", obj.fun, constr, constr.dir, rhs, compute.sens=T)

prod.sol$objval
prod.sol$solution
prod.sol$duals

print("##########################################################################")

A = matrix(c(1,2,3,0,-5,-1), nrow=2)
A
ginv(A)

B = matrix(c(5,0,0,0, -3,3,0,0, 0,1,2,0 ,9,-2,0,2), nrow=4)
B
E = eigen(B)
diag(E$values)
E$vectors
solve(E$vectors)
#E$vectors %*% diag(E$values) %*% solve(E$vectors)
