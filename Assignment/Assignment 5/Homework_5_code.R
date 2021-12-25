# 3.8 Part B
P <- matrix(c(1/4,1/2,0,0, 3/4,1/2,0,0, 0,0,1/5,4/5, 0,0,4/5,1/5), ncol = 4, nrow = 4)

P_0 <- diag(4)

for (i in 1:1000000) {
  P_0 <- P_0%*%P
}

P

# 3.14 Part B
P_1 <- matrix(c(0.77,0.24, 0.23,0.76), ncol = 2, nrow = 2)
P_0 <- diag(2)
P <- matrix(c(0,0,0,0), ncol = 2, nrow = 2)
for (i in 1:365) {
 P_0 <-P_0%*%P_1
 P <- P + P_0
}

# 3.17 Code

P_1 <- matrix(c(1/2,0, 1/2,1), ncol = 2, nrow = 2)
P_0 <- diag(2)

for (i in 1:1000000) {
  P_0 <- P_0%*%P_1
}

P_0 <- diag(2)
P <- matrix(c(0,0,0,0), ncol = 2, nrow = 2)
for (i in 0:1000000) {
  P_0 <-P_0%*%P_1
  P <- P + P_0
}