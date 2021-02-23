#Parabola 
g <- function(x){
      return(2 * x ^ 2 + x - 2)
}
x <- seq(-5, 5, 0.01)
y <- g(x)
plot(x, y, type = "l", xlab = "Eje x", ylab = "Eje y")
abline(h = 0, v = 0)