####################################################################
################# EXAMEN FINAL R-PROGRAMMING #######################
####################################################################

##############
# Pregunta n #
##############

# Crear una función que acepte un data frame y una vector como
# argumentos. Si la longitud del vector es igual al número de filas
# se deberá añadir como nueva columna del data.frame y la función
# retornará el data.frame resultante, caso contrario se mostrará
# Un mensaje indicando que las longitudes no coinciden y también
# deberá mostrar el número de número de filas del data.frame
# y del vector.

# Funciones útiles: cbind(), paste(), paste0(), print(), cat() - similar a cero

# El mensaje de error debe ser similar a este:

# El número de filas del data.frame y la longitud no coinciden.
# Nro filas: 150
# Longitud del vector: 20

# Rpta:

ejercicio_n <- function(df,vec){
    
    if(nrow(df) == length(vec)){
        df_final <- cbind(df,vec)
        return(df_final)
    } else{
        msj <- paste0('El número de filas del data.frame y la longitud no coinciden.\nNro filas: ',nrow(df),'\n','Longitud del vector: ',length(vec))
        cat(msj)
    }
}

vec <- 
df <- 

ejercicio_n(df,vec)

# Crear una función:

a <- ejercicio_n(iris,pk<-1:20)

strsplit('franklin',split = '')[[1]]


# Pregunta n_2:

# Considerando la secuencia de dígitos del 0 al 9, cree una función
# que reciba como argumento un vector con ciertos dígitos y retorne
# otro vector con aquellos digitos del 0 al 9 que no están contenidos
# en dicho vector:

# Ejemplo:
# vec <- c(1,1,2,3,4)
# funcion_2(vec)
# Resultado: (5,6,7,8,9)


# Rpta:
pregunta_n_2 <- function(vec){
    p <- 1:9
    result <- p[!p %in% vec]
    return(result)
}
