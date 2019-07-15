C <- 50e-9
Ug <- 100
Uc <- 12e3
f <- 1000

w0 <- 2*pi*f

L <- 1/(w0^2*C)

Q <- Uc/Ug
R <- w0*L/Q

B <- R/L

##Q alto
w1 <- w0-B/2
w2 <- w0+B/2

epsilon <- 1/100
x <- Q*epsilon

Yx <- 1/sqrt(1+4*x^2)

Io <- Ug/R

Ix <- Yx*Io
