library(MASS)
library(lpSolve)
library(expm)

A = matrix(c(1,2,3,0,-5,-1), nrow=2)
A
ginv(A)

print("##########################################################################")

B = matrix(c(5,0,0,0, -3,3,0,0, 0,1,2,0 ,9,-2,0,2), nrow=4)
B
E = eigen(B)
diag(E$values)
E$vectors
solve(E$vectors)
#E$vectors %*% diag(E$values) %*% solve(E$vectors)

print("##########################################################################")

A = matrix(c(1,2,-1, 2,1,1, -2,1,-1), nrow=3)
C = c(-1,5,-2)

solve(A, C)

print("##########################################################################")

A = matrix(c(1,0,0, -1,-1,0 ,2,2,2), nrow=3)
A %^% 20


print("##########################################################################")

obj.fun = c(0.4, 0.5)
constr = matrix(c(0.3,0.5,0.6,1,0, 0.1,0.5,0.4,0,1), nrow=5)
constr.dir = c("<=", "=", ">=", ">=", ">=")
rhs = c(2.7, 6, 6, 0, 0)
prod.sol = lp("min", obj.fun, constr, constr.dir, rhs)

prod.sol$objvel
prod.sol$solution

print("##########################################################################")

obj.fun = c(15,20)
constr = matrix(c(1,2,1,1,0, 2,-3,1,0,1), nrow=5)
constr.dir = c(">=", "<=", ">=", ">=", ">=")
rhs = c(10,6,6,0,0)
prod.sol = lp("max", obj.fun, constr, constr.dir, rhs)

prod.sol$objvel
prod.sol$solution
