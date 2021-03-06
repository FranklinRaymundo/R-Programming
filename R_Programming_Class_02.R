####################################################################
####################### R Programming - Class 02 ###################
####################################################################

######################
# R como Calculadora #
######################

# - Operaciones aritm�ticas.

# + - / * ^ %% %/%

# Ejercicios:

 ((5+9)*5)^3

# �Arrojar�an el mismo resultado?
5^2^3
5^(2^3)
(5^2)^3

# Variables:

# Operador de asignaci�n: "<-" o "=" 

peso_franklin <- 85
talla_franklin = 1.70

# �nica diferencia entre "<-" y "=".
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

class(5)
typeof(5)
typeof(5L)

####################
# Tipos de Objetos #
####################

# Vectores:

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

# Coerci�n:

# character + numeric = text
# character + boolean = text
# numeric + boolean = numeric

# Asignarle nombre a los vectores.

pesos <- c(30,55.5,75.4)
pesos

names(pesos) <- c("Luis","Hugo","Luisa")

# Element Wise-Operations

# �Habr�a alg�n problema?
a <- c(1,3,5,9)
b <- 1:3
a * b

# EJercicios:

# 1. Crear un vector de n�meros pares del 1 al 20.
seq(2,20,2)

# 2. Crear un vector de n�meros impares del 1 al 20.
seq(1,20,2)

# 3. �Cu�l es el valor de la siguiente expresi�n?

k <- c("Lunes","Martes",FALSE)
is.character(k)

# 4. �Qu� pasa en la siguientes expresiones?
x <- y <- 5
6 -> z

# 5. �Qu� resultados se obtiene al usar dim y length en el vector k?

# Remover todos los objetos del global environment
rm(list=ls())


# Factores:

# Dise�ada especialmente para variables categ�ricas. Nominales y
# ordinales.

civil <- c(rep("soltero",5),rep("casado",5),rep("divorciado",5))
civil <- factor(x = civil)

a<-factor(civil,levels = c('divorciado','casado','soltero'))

# 1. Crear un vector de g�nero 10 masculino 10 femenino en orden aleatorio

set.seed(123)
gen <- sample(c(rep('M',10),rep('F',10)))

genero <- factor(gen,levels=c('M','F'))

# Matrices:

# Es una colecci�n de elementos del mismo tipo de dato
# en dos dimensiones.

# matrix(vector,nrow = a, ncol = b, byrow = FALSE)

# Operaciones con matrices:

# A*B
# A %*% B
# t(A)
# crossprod(A,B)
# diag()
# eigen() autovalores y autovectores
# solve()
# rowMeans,rowSumns,colMeans,colSums
# cbind y rbind
