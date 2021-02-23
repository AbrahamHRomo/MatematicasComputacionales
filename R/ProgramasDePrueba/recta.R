m <- 3 # pendiente 
b <- 2 #interseccion

#función de la linea recta 

f <- function(m, b, x){
      return(m * x + b)
}

x <- seq(-5, 5, 1) #vector de -5 a 5
y <- f(m, b, x) # evaluamos 

plot(x, y) #graficamos 
