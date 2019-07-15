R <- 2
Xc <- 0.5
Xl<- 2

## Primera parte
Ya <- 1i*1/Xc
Yb <- Ya
Yc <- 1/R

Y11 <- Yb + Yc
Y22 <- Y11
Y12 <- -Yc
Y21 <- Y12

Yrc <- rbind(c(Y11, Y12), c(Y21, Y22))

Yxl <- 1/(1i*Xl)
Yl <- rbind(c(Yxl, -Yxl), c(-Yxl, Yxl))

Yt <- Yrc + Yl
## Segunda parte

detY <- Yt[1,1] * Yt[2,2] - Yt[1,2] * Yt[2,1]
A <- -Yt[2,2]/Yt[2,1]
B <- -1/Yt[2,1]
C <- -detY/Yt[2,1]
D <- -Yt[1,1]/Yt[2,1]
Tm <- rbind(c(A, B), c(C, D))

Tt <- Tm %*% Tm

At <- Tt[1,1]
Bt <- Tt[1,2]
Ct <- Tt[2,1]

(Zo <- sqrt(Bt/Ct))
## (Zo <- -sqrt(Bt/Ct))

(eGamma <- At + Bt/Zo)
(alpha <- Re(log(eGamma)))
(exp(alpha))
