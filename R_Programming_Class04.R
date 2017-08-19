############################################################################
############################ Programación en R #############################
############################################################################

# Clase 03:

# Objetos:

# - Vectores
# - Matrices
# - Factors
# - DataFrames
# - Listas

###############
# Data Frames #
###############

# Crear un DataFrame

# A partir de vectores

edad <- c(10,15,20,25,40)
peso <- c(55.5,45.6,78.0,65.2,58.6)
talla <- c(1.60,1.71,1.75,1.75,1.65)

alumnos <- data.frame(edad,peso,talla)

alumnos <- data.frame(Age=edad,Weight=peso,Height=talla)
alumnos


# Importar un Data Frame

# Working directory


data1 <- read.csv('Fisrt_session.csv')
head(data1)




