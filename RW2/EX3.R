# Kongsak Tipakornrojanakit (Sam) 5680624
# Ex3

RecFunc = function(l, w) {
  return(c("Area" = l * w, "Perimeter" = 2 * (l * w)))
}

RecFunc(2,6)
RecFunc(15,36)

print("##########################################################################")

IntFunc = function(Int, t, n, r) {
  Fin = Int * (1 + r/n)^(t*n)
  return(c("Future Balance" = Fin, "Interest Earned" = Fin - Int))
}

IntFunc(3000, 7, 2, 0.06)

print("##########################################################################")

MatFunc = function(invec, outcol) {
  nrow = length(invec)
  ncol = outcol + 1
  mat = matrix(numeric(nrow * ncol), nrow=nrow)
  for (i in 1:ncol) {
    mat[, i] = invec^(i - 1)
  }
  return(mat)
}

MatFunc(c(1,2,3), 10)

print("##########################################################################")

OrthogonalBasis = function(vecs) {
  nrow = length(vecs[,1])
  ncol = length(vecs)/nrow

  res = matrix(numeric(nrow * ncol), nrow=nrow)
  res[,1] = vecs[,1]

  for (i in 2:ncol) {
    val = vecs[, i]
    for (j in 1:(i - 1)) {
      print(c(i, j))
      val = val - sum(vecs[, i] * res[, j])/sum(res[, j] * res[, j]) * res[,j]
    }
    res[,i] = val
  }
  return(res)
}

S1 = cbind(c(1,1,0), c(0,1,0), c(1,0,1))
OrthogonalBasis(S1)

S2 = cbind(c(1,1,0,1), c(1,2,1,0), c(0,1,2,1), c(1,0,1,1))
OrthogonalBasis(S2)
