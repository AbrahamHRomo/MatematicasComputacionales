circunferencia <- function(h, k, r){
        if (r >= 0){
                if (r == 0){
                        plot(x = h, y = k, xlab = "eje x", ylab = "eje y")#grafica del punto
                } else {
                        x <- seq(h - r, h + r, 0.01) #como no se puede graficar en R_2
                        ypositiva <- k + sqrt(r^2 - (x - h)^2) #parte positiva de la circunferencia 
                        ynegativa <- k - sqrt(r^2 - (x - h)^2) #parte negativa de la circunferencia
                        plot(x, ypositiva, type = "l", xlim = c(h - (r + 1), h + (r + 1)), ylim = c(k - (r + 1), k + (r + 1)), xlab = "Eje x", ylab = "Eje y")
                        lines (x, ynegativa, type = "l")
                        abline(h = 0, v = 0) #agregamos los ejes
                        points(x = h, y = k, col = "red") # se dibuja el centro 
                }
        } else {
                return(print("El radio no es positivo"))
        }
}
circunferencia(2, -3, 3) #Se manda llamar a la funcion circunferencia