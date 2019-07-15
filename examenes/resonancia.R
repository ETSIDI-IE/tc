L <- 40e-3
C <- 100e-6
Rb <- 1
R <- 2e3

wo <- 1/sqrt(L*C)
Qb <- wo*L/Rb

Rb2 <- Qb^2*Rb
Rp <- (R*Rb2)/(R+Rb2)

Q <- wo*C*Rp
B <- wo/Q
