library(lattice)

fref <- 1
x <- seq(0,1/fref,l=10000)

mf <- 10

f <- mf*fref
T <- 1/f;
ma <- 0.7
Vt <- 1/ma*(4*abs(x/(2*T)-floor(x/(2*T)+.5))-1)

trellis.device(pdf, file = "triangular_periodica.pdf")
xyplot(Vt ~ x, type = 'l',
       xlab = "t", ylab = "f(t)",
       grid = TRUE,
       col.line = "black",
       scales=list(
           x = list(
               at = seq(0,1,.1)
           )),
       panel = function(x, y, ...)
       {
           panel.xyplot(x, y, ...)
           panel.abline(h = 0, col.line = "red")
       })
dev.off()

Vt0 <- Vt - min(Vt)

trellis.device(pdf, file = "triangular0_periodica.pdf")
xyplot(Vt0 ~ x, type = 'l',
       xlab = "t", ylab = "f(t)",
       grid = TRUE,
       col.line = "black",
       scales=list(
           x = list(
               at = seq(0,1,.1)
           )),
       panel = function(x, y, ...)
       {
           panel.xyplot(x, y, ...)
           panel.abline(h = 0, col.line = "red")
       })
dev.off()

fc <- 5*fref
Tc <- 1/fc;
Vc <- 4*abs(x/(2*Tc)-floor(x/(2*Tc)+.5))-1
Cuadrada <- (Vc>0)-(Vc<0);

trellis.device(pdf, file = "cuadrada_periodica.pdf")
xyplot(Cuadrada ~ x, type = 'l',
       xlab = "t", ylab = "f(t)",
       grid = TRUE,
       scales=list(
           x = list(
               at = seq(0,1,.1)
           )),
       col.line = "black",
       panel = function(x, y, ...)
       {
           panel.xyplot(x, y, ...)
           panel.abline(h = 0, col.line = "red")
       })
dev.off()

Cuadrada0 <- (Cuadrada + 1)/2

trellis.device(pdf, file = "cuadrada0_periodica.pdf")
xyplot(Cuadrada0 ~ x, type = 'l',
       xlab = "t", ylab = "f(t)",
       col.line = "black",
       grid = TRUE,
       scales=list(
           x = list(
               at = seq(0,1,.1)
              )),
       panel = function(x, y, ...)
       {
           panel.xyplot(x, y, ...)
           panel.abline(h = 0, col.line = "red")
       })
dev.off()







