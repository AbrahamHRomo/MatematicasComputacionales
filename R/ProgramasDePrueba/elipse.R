elipse <- function(h, k, a, b, horizontal){
      if (a > b){
            c <- sqrt (a ^ 2 - b ^ 2)
            if (horizontal){
                  x <- seq(h - a, h + a, 0.01)
                  ypositiva <- k + sqrt((b ^ 2 - (b ^ 2 / a ^ 2) * ((x - h) ^ 2)))
                  ynegativa <- k - sqrt((b ^ 2 - (b ^ 2 / a ^ 2) * ((x - h) ^ 2)))
                  plot(x, ypositiva, type = "l", xlim = c(h - (a + 1),h + (a + 1)), ylim = c(k - (b + 1), k + (b + 1)), xlab = "Eje x", ylab = "Eje y")
                  lines(x, ynegativa, type = "l")
                  abline(h = 0, v = 0)# ejes cordenados 
                  points(x = c(h - c, h + c), y = c(k, k), col = "red") #focos
            } else {
                  x <- seq(h - b, h + b, 0.01)
                  ypositiva <- k + sqrt((a ^ 2 - (a ^ 2 / b ^ 2)* ((x - h) ^ 2)))
                  ynegativa <- k - sqrt((a ^ 2 - (a ^ 2 / b ^ 2)* ((x - h) ^ 2)))
                  plot(x, ypositiva, type = "l", xlim = c(h - (b + 1), h + (b + 1)), ylim = c(k - (a + 1), k + (a + 1)), xlab = "Eje x", ylab = "Eje y")
                  lines(x, ynegativa, type = "l")
                  abline(h = 0, v = 0)
                  points(x = c(h, h), y = c(k - c, k + c), col = "red")
            }
      } else {
            return(print("No cumple con las condiciones para ser una elipse. (a no es mayor que b)"))
      }
}

elipse(1, 2, 16, 9, TRUE)