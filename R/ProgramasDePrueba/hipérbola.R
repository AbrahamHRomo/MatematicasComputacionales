#Hiperbola
hiperbola <- function(h, k, a, b, horizontal){
      c <- sqrt(a^2 + b^2)
      if (horizontal){
            xizq <- seq(h - (a + 3), h - a, 0.01)
            xder <- seq(h + a, h + (a + 3), 0.01)
            #dominio positivo
            yizqpositiva <- k + sqrt((b^2/a^2) * ((xizq - h)^2) - b^2)
            yderpositiva <- k + sqrt((b^2/a^2) * ((xder - h)^2) - b^2)
            #dominio negativo
            yizqnegativa <- k - sqrt((b^2/a^2) * ((xizq - h)^2) - b^2)
            ydernegativa <- k - sqrt((b^2/a^2) * ((xder - h)^2) - b^2)
            
            plot(xizq, yizqpositiva, type = "l", xlim = c(h - (a + 4), h + (a + 4)), ylim = c(k - (b + 4), k + (b + 4)), xlab = "Eje x", ylab = "Eje y")
            lines(xizq, yizqnegativa, type = "l")
            #se agrega rama derecha
            lines(xder, yderpositiva, type = "l")
            lines(xder, ydernegativa, type = "l")
            abline(h = 0, v =
                     0)#ejes coordenados
            points(x = c(h - (a + c)), y = c(k), col = "red")#focos
            points(x = c(h + (a + c)), y = c(k), col = "red")# el foco de la rama derecha se suma la cant. de a + c en lugar de reestarla
      } else {
            yizq <- seq(k - (a + 3), k - a, 0.01)
            yder <- seq(k + a, k + (a + 3), 0.01)
            #Rango positivo
            xizqpositiva <- h + sqrt((b^2 / a^2) * ((yizq - k)^2) - b^2)
            xderpositiva <- h + sqrt((b^2 / a^2) * ((yder - k)^2) - b^2)
            #rango negativo
            xizqnegativa <- h - sqrt((b^2 / a^2) * ((yizq - k)^2) - b^2)
            xdernegativa <- h - sqrt((b^2 / a^2) * ((yder - k)^2) - b^2)
            
            plot(xizqpositiva, yizq, type = "l", xlim = c(h - (b + 4), h + (b + 4)), ylim = c(k - (a + 4), k + (a + 4)), xlab = "Eje x", ylab = "Eje y")
            lines (xizqnegativa, yizq, type = "l")
            #se agrega rama superior
            lines (xderpositiva, yder, type = "l")
            lines (xdernegativa, yder, type = "l")
            abline(h = 0, v = 0)
            points(x = c(h), y = c(k - (a + c)), col = "red") #focos
            points(x = c(h), y = c(k + (a + c)), col = "red")#se suman a + c en lugar de restarlos
      }
}
hiperbola(1, 2, 2, 3, TRUE)