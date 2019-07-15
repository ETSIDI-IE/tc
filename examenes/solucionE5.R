R <- 1
Xc <- 2
Zl<- -2i

## Primera parte
Ya <- 1i*1/Xc
Yb <- Ya
Yc <- 1/R

Y11 <- Yb + Yc
Y22 <- Y11
Y12 <- -Yc
Y21 <- Y12

Ym <- rbind(c(Y11, Y12), c(Y21, Y22))


Zm <- solve(Ym)

Zin1 <- Zm[1,1] - (Zm[1,2] * Zm[2,1])/(Zl + Zm[2,2])

Yt <- Ym + Ym

Zt <- solve(Yt)

ZinT <- Zt[1,1] - (Zt[1,2] * Zt[2,1])/(Zl + Zt[2,2])

## Segunda parte

detY <- Y11*Y22 - Y12*Y21
A <- -Y22/Y21
B <- -1/Y21
C <- -detY/Y21
D <- -Y11/Y21
Tm <- rbind(c(A, B), c(C, D))

Zin2 <- (A*Zl + B)/(C*Zl +D)

Tt <- Tm %*% Tm
Zin2t <- (Tt[1,1]*Zl + Tt[1,2])/(Tt[2,1]*Zl +Tt[2,2])

Zgt <- Conj(Zin2t)
Zot <- (Tt[2,2]*Zgt + Tt[1,2])/(Tt[2,1]*Zgt +Tt[1,1])

Zo <- sqrt(Tt[1,2]/Tt[2,1])
eGamma <- Tt[1,1]+sqrt(Tt[1,1]^2-1)


