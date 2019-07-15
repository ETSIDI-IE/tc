library(lattice)

x <- seq(0, 10, length = 1000)

p <- x/(1 + x)^2

xyplot(p/max(p) ~ x,
       type = "l",
       xlab = "RL/Rg",
       ylab = "P_L")

ef <- x/(1 + x)

xyplot(ef ~ x,
       type = "l",
       xlab = "RL/Rg",
       ylab = "Eficiencia")

xyplot(p/max(p)  + ef ~ x,
       type = "l",
       xlab = "RL/Rg",
       ylab = "Potencia y Eficiencia")

xyplot(diff(p)/diff(x) ~ x[-1],
       type = "l", grid = TRUE,
       xlab = "RL/Rg",
       ylab = "dP/dR")

