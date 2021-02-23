#linea recta
m <- 2 
b <- 2

f <- function(m, b, x){
      return(m * x + b)
}
x <- seq(-5, 5, 0.01)
y <- f(m, b, x)

plot(x, y, type = "l", xlab = "Eje x", ylab = "Eje y")
abline(h = 0, v = 0) #Una linea horizontal que pasa por el 
# cero en las x y una linea vertical que pasa por el cero
#en las y.