####################################################################
####################### R Programming - Class 04 ###################
####################################################################

#############
# Funciones #
#############

# Estructura

# nombre_funcion <- function(arg1,arg2,arg3,....){
#   ---- sentencias/tareas a ejecutar ----
#   return(result)
# }


# Ejemplos:

# 1. Definir una función que sume dos números.

suma_2 <- function(x,y){
  suma <- x+y
  return(suma)
}

suma_2(5,2)


# 2. Definir una función que sume los elementos de un vector.

suma_v <- function(x){
  return(sum(x))
}

suma_v(1:9)

# 3. Crear una función que divida dos números.

div_2 <- function(x,y){
  return(x/y)
}

# Notar que los valores ingresados serán asignados a los argumentos
# de la función, según el orden en que estas últimas hayan sido definidas.

# En este caso las siguientes ejecuciones no envían el mismo resultado.
div_2(5,6)
div_2(6,5)

# Cuando se disponga de muchos argumentos, se recomienda asignar cada
# valor input especificando explícitamente el argumento al que se le
# asignará para la ejecución de la función.

div_2(x = 5,y = 6)


# Si se menciona explícitamente los argumentos al llamar la función,
# el orden de argumentos y valores ingresados no altera el resultado final

div_2(x = 5,y = 6)
div_2(y = 6,x = 5)

# 3. Definir la función potencia en R.
      potencia(base,potencia)

# potencia <- function(base,potencia){
#   return(base^potencia)
# }

potencia(5,2)

# Otra solución empleando bucles:

potencia <- function(base,pow){
  
  inicial <- 1
  
  for(i in 1:pow){
    inicial <- inicial * base
  }
  
  return(inicial)
}

potencia(5,2)


# 4. Función que imprima el factorial de un número.

# Factorial
inicial <- 1
for(i in 1:5){
  inicial <- inicial * i
}
inicial


# 5. Crear una función que retorne un resumen estadístico para un vector
# input. Debe retornar:

# - media
# - varianza
# - desviación estándar
# - curtosis
# - coeficiente de asimetría

set.seed(123)
ve <- rnorm(100)

mean(ve) # media
sd(ve) # desviación estándar
var(ve) # varianza


install.packages('moments',dependencies = T)
library(moments)

skewness(ve)
kurtosis(ve)

# Estadisticos

estadisticos <- function(ve){
  media <- mean(ve) # obtiene la media
  devest <- sd(ve) # obtiene la desviacion estandar
  varianza <- var(ve)
  curtosis <- kurtosis(ve)
  asimetria <- skewness(ve)
  return(list(media,devest,varianza,curtosis,asimetria))
}

# Nota: R no puede retornar múltiples objetos a la vez. Por esta razón,
# es necesario crear una lista que contenga todos los objetos a retornar,
# y finalmente retornar la lista.

estadisticos(vec1)


#################
## Ejercicios ###
#################

# 1. Crear una funcion que retorne el texto verdadero si un numero es par.

par_1 <- function(num){
      if(num %% 2 == 0){
        print('Verdadero')
      } else {
        print('False')
      }
    }

par_2 <- function(num){
    resultado <- ifelse(num %% 2 == 0,'Verdadero','Falso')
    return(resultado)
  }

# 2. Tomar un vector de enteros y calcula su suma. Sin embargo, los 7 son
#    especiales, deben ser considerados doble. Si hay un 7 dentro del vector,
#    tendrías que sumar 14.

#   Ejemplo:
#     vector = 1,7,8
#     suma = 1 + 7*2 + 8 = 23

# 3. Dado dos vectores, probar si un vector tiene el orden de sus elementos
#     inverso al otro.
#   a = c(1,2,3)  
#   b = c(3,2,1)
#   c = c(1,3,2)
#   inverso(a,b)    ->  TRUE       inverso(b,a)    ->  TRUE
#   inerso(a,c)     ->  FALSE

# 4. Crear una funcion que tenga 2 argumentos, donde cada uno sea una matriz
#    de igual orden y retorne lo siguiente:
#    - suma
#    - producto elemento a elemento
#    - product matricial
#    - inversa(primera matriz)
#    - inversa(segunda matriz)

resumen_matrices <- function(mat1,mat2){
  suma <- mat1+ mat2
  producto <- mat1 * mat2
  prod_matricial <- mat1 %*% mat2
  inv_1 <- solve(mat1)
  inv_2 <- solve(mat2)
  return(list(suma,producto,prod_matricial,inv_1,inv_2))
}
