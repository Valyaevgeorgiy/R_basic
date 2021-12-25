
q <- 8
z1 <- switch(q, "Hello", 2.34, FALSE, NaN, sqrt(q))
z1

q2 <- 2.5
z2 <- switch(q2, "ello", 2.4:34, FALSE, NaN, sqrt(q2))
z2

q3 <- TRUE
z3 <- switch(q3, "ello", 2.4:34, FALSE, NaN, sqrt(q3))
z3

q4 <- '234'
z4 <- switch(q4, '4'="ello", '67'=2.4:34, '2'=FALSE, NaN)
z4 


repeat {
  d <- sample(x = 1:4, size = 4, replace = 1)
  if (d == 1) {
    break
  }
}