####################################################################
####################### R Programming - Class 02 ###################
####################################################################

######################
# R como Calculadora #
######################

# - Operaciones aritmÃ©ticas.

# + - / * ^ %% %/%

# Ejercicios:

((5+9)*5)^3

# Â¿ArrojarÃ­an el mismo resultado?
5^2^3
5^(2^3)
(5^2)^3

# Variables:

# Operador de asignaciÃ³n: "<-" o "=" 

peso_franklin <- 
talla_franklin = 

# Ãºnica diferencia entre "<-" y "=".

sum(x=c(1,2,3))
sum(x<-c(1,2,3))


##################
# Tipos de datos #
##################

# Character

"Hola. Bienvenido"
'Hola.Mundo'

# numeric 
# integer

# booleans

TRUE
FALSE

# Saber el tipo de dato:
class(5)


####################
# Tipos de Objetos #
####################

# Vectores:

# Clase de objeto mÃ¡s bÃ¡sico.
# Son colecciones de elementos de un solo tipo de dato.

# Ejemplos:

# Crear vectores en R

# c()
v1 <- c(1,2,3,4,5)

# - rep: Repetir un elemento una cierta cantidad de veces.

v2 <- rep(10,5) # Crear un vector con el elemento 10 repetido 5 veces.

# - seq

v3 <- seq(1,10,2) # Crear una secuencia del 1 al 10 con paso 2.

# - :
v4 <- 1:10 # Crear una secuencia del 1 al 10

# CoerciÃ³n:

# character + numeric = character
# character + boolean = character
# numeric + boolean = numeric
# numeric + integer = numeric
# integer +  boolean = integer

# Asignarle nombre a los vectores.

pesos <- c(30,55.5,75.4)
pesos

names(pesos) <- c("Luis","Hugo","Luisa")

# Element Wise-Operations

# OperaciÃ³n vectorial vs operaciÃ³n elemento a elemento.

c(5,7,2)%*%c(5,2,3)
c(5,7,2)*c(5,2,3)

# Reciclaje: Â¿HabrÃ­a algÃºn problema?
a <- c(1,3,5,9)
b <- 1:3
a * b

# EJercicios:

# 1. Crear un vector de nÃºmeros pares del 1 al 20.
seq(2,20,2)

# 2. Crear un vector de nÃºmeros impares del 1 al 20.
seq(1,20,2)

# 3. Â¿CuÃ¡l es el valor de la siguiente expresiÃ³n?

k <- c("Lunes","Martes",FALSE)
is.character(k)

# 4. Â¿QuÃ© pasa en la siguientes expresiones?
x <- y <- 5
6 -> z

# 5. Â¿QuÃ© resultado se obtiene al usar length en el vector k?

# Remover todos los objetos del global environment
rm(list=ls())

# Inicializar un vector:
vec.ini <- vector('integer',0)

# Ejemplo, divisiÃ³n sin funciones:

vec.sum <- 
vec.cont <- 

    
# Factores:

# DiseÃ±ada especialmente para variables categÃ³ricas. Nominales y
# ordinales.

civil <- c(rep("soltero",5),rep("casado",5),rep("divorciado",5))
civil <- factor(x = civil)

a<-factor(civil,levels = c('divorciado','casado','soltero'))

# 1. Crear un vector de gÃ©nero 10 masculino 10 femenino en orden aleatorio

set.seed(123)
gen <- sample(c(rep('M',10),rep('F',10)))

genero <- factor(gen,levels=c('M','F'))

# Matrices:

# Es una colecciÃ³n de elementos del mismo tipo de dato
# en dos dimensiones.

# Vector con un atributo adicional: dim

# matrix(vector,nrow = a, ncol = b, byrow = FALSE)

# Operaciones con matrices:

# A*B
# A %*% B
# t(A)
# diag()
# eigen() autovalores y autovectores
# solve()
# rowMeans,rowSumns,colMeans,colSums
# cbind y rbind

p <- cbind(matrix(1:9,3),1:7)

# Podemos aÃ±adir nombres a las filas y columnas
# rownames() y colnames()


##############
# Ejercicios #
##############

# Crear las siguientes matrices:

# SoluciÃ³n:

# 1. Asignar nombre m1.

#       [,1] [,2]
# [1,]    1  101
# [2,]    2  102
# [3,]    3  103
# [4,]    4  104

m1 <- matrix(c(1:4,101:104),ncol=2)

# 2. Asignar nombre m2.

#       [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]  101  102  103  104

m2 <- matrix(c(1:4,101:104),nrow=2,byrow = T)

m2 <- t(a)

# 3. Asignar nombre n1.

#       [,1] [,2] [,3] [,4]
# [1,]    5    0    0    0
# [2,]    0    5    0    0
# [3,]    0    0    5    0
# [4,]    0    0    0    5

p <- rep(5,4)
n1 <- diag(p)


# 4.

#       [,1] [,2] [,3] [,4]
# [1,]    3    0    0    0
# [2,]    0    1    0    0
# [3,]    0    0   -2    0
# [4,]    0    0    0    0

n2 <- diag(c(3,1,-2,0))


# 5. Calcular el producto matricial de m1 y m2

n1 %*% n2

# 5. Calcular la inversa de m1 y m2
solve(m1)
solve(m2)
