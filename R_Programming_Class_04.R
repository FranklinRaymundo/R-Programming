##########################################################################
########################## R Programming - Class 04 ######################
##########################################################################

###########
# Objetos #
###########

# - Vectores 

# Notar que R, es case-sensitive, es decir, hace diferencia en mayúsculas
# y minúsculas a la hora de llamar objetos y funciones.

# ¿Son iguales?
x <- c(1,2,3,4,5) 
x <- C(1,2,3,4,5)

# Creamos un vector secuencia
b <- seq(1,50,2)

# Length; longitud de un vector
length(b[1:10])

# Aleatorizamos los elementos del vector
sample_b <- sample(b)

sample_b

# Operadores condicionales
# >,<,>=,<=,==,!=,%in%

# ¿Se encuentra 5 en el vector c(1,2,4)?
5 %in% c(1,2,4)
  
sample_b

4 %in% sample_b

# - Matrices

# Matriz a partir de un vector.

b <- 1:9

# Ingreso de valores por fila y columna.
matrix(b,nrow = 3,byrow = T)
matrix(b,nrow = 3,byrow = F)

# - Factors: Variables categóricas

genero <- sample(c(rep("H",5),rep("M",5)))
genero

class(genero)

genero_f <- factor(genero)
genero_f


# - Data Frames 

# Crear un DataFrame:

# 1. A partir de vectores

edad <- c(10,15,20,25,40)
peso <- c(55.5,45.6,78.0,65.2,58.6)
talla <- c(1.60,1.71,1.75,1.75,1.65)

alumnos <- data.frame(edad,peso,talla)

alumnos <- data.frame(Age=edad,Weight=peso,Height=talla)
alumnos

# Nombre de filas y de columnas
colnames(alumnos) <- c('Edad','Peso','Talla')
rownames(alumnos) <- c('Pedro','Luis','Rocio','Lourdes','Jose')


# 2. A partir de una data externa

# Directorio de trabajo

getwd()
setwd('C:/Users/CEIEE/Desktop/Class 04')

# Exportar un Data Frame
write.csv(alumnos,'alumnos.csv',row.names=F)

# rm(alumnos)

head(iris)
tail(iris)

# Exportaremos una copia de la data iris a formato de archivo .csv
write.csv(iris,'iris_test.csv',row.names=F)

# Importarmos la base iris exportada en la linea anterior
iris_1 <- read.csv('iris_test.csv')
iris_2 <- read.csv('iris_test.csv',sep=";")


# - Listas

# Tipo de objeto más genérico. Permite almacenar cualquier tipo de 
# objeto como colección.

a<-5 # escalar
v<-1:10 # vector
df<-alumnos # data.frame
boo<-T # boolean

mi_lista <- list(a,v,df,boo)

##############
# Ejercicios #
##############

# Crear las siguientes matrices:

# Solución:

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
