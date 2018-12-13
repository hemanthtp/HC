# R tutorial with bayesian
A = matrix(c(2, 1, 4, 5, 3, 7),nrow=2)
B = matrix(c(2, 1, 4, 5, 3, 7),nrow=2,byrow=TRUE)

A[2,3]
A[2, ]

A[ ,3] # Wrong
A[ ,3, drop=FALSE]
A[ ,c(1,3)]


dimnames(A) = list(c("row1", "row2"), c("col1", "col2", "col3"))

B = matrix(c(2, 4, 3, 1, 5, 7), nrow=3)

C = matrix(c(7, 4, 2), nrow=3)

cbind(B, C)


D = matrix(c(6, 2), nrow=1, ncol=2)


A = matrix(1:6, nrow=3); A
B = matrix(5:10, nrow=3); B
C = matrix(1:12, nrow=3); C
D = matrix(-4:15, nrow=4); D

C %*% D
#---------------------------------------------------------------
#List Index#
#----------------------------------
 n = c(2, 3, 5)
 s = c("aa", "bb", "cc", "dd")
 b = c(TRUE, FALSE, TRUE, FALSE)
 x = list(n, s, b, 3)

 x[c(2, 4)]

 v = list(bob=c(2, 3, 5), john=c("aa", "bb"))
 v["bob"]
 attach(v)
detach(v)

# ------------------------------
  n = c(2, 3, 5)
  s = c("aa", "bb", "cc")
  b = c(TRUE, FALSE, TRUE)
  f = data.frame(n, s, b)

  f[1,2]
nrow(f)


#To retrieve more than one rows at once, we use a numeric index vector
mtcars[c(3, 24),]
