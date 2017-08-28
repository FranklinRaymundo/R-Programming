# Repaso de la Clase 02 + Algunos detalles

#Tipos de datos: Numeric , integer , character  , Booleans


x<- 1 ; y<- "lol" ; z<- T ; x_1 <- 2.1e23 ; 
xD <- c(1L,2L,3L) ; w<- c(1L,2) ; 
matrizota <- matrix(c(1:6),nrow=2) ;matriz<-matrix(c(1,2,3,4,5,6),nrow=2)

#Class -> Nos devuelve el tipo de Objeto
class(x) ; class(y) ; class(z) ; class(x_1) ; 
class(xD) ; class(w)
class(matrizota) ; class(matriz)

#Typeof -> Tipo de dato ; R por defecto toma 



#Generación de datos
#Secuencias Regulares 
# El operador ":" tiene prioridad sobre los demás, pero, no sobre los paréntesis
a <- 1:30
b <- 1:10 -1 
c <- 1:(10-1)
d <- seq(1,10,0.1)
e <- seq(length=9,from=1,to=5)
rep(4,20)
#sequence(a) genera numeros desde 1 hasta a
sequence(5)
sequence(5:7)
#Generador de niveles : gl(k,n) ; k:numero de niveles ; n:numero de replicas de cada nivel
#Adicionalmente length : numero de datos producidos y labels que especifica los nombres de los factores

h<-gl(3,5,length=15,labels = c("a","b","c"))
expand.grid(altura=c(60,65,80),p=c(70,85),sexo=c("Masculino","Femenino","ND"))

#Manipulación de Objetos
#Podemos crear objetos especificando la clase, tipo y longitudde este , crear objetos vacios y modificarlos
#de manera sucesiva 
#Vector : elementos numericos, caracter o logico
logical(length = 5) ; numeric(length = 5) ; character(length = 2) 

#Factor : Incluye valores correspondientes a una variable categórica, además
# de los posibles los diferentes niveeles posibles de esta variables.
# factor(x, leveles = sort(unique(x), na.last = TRUE) , labeles =levels, exclude = NA , 
# ordered= is.ordered(x) )

factor(1:3)
factor(c("HOLI_BOLI","CASA","AMO"))
factor(c(1:6,1))
factor(1:5 , levels = 1:6)
#¿Que pasaría en los siguientes casos?
factor(1:3 , levels = 4:7) #¿si los niveles no estan dentro del vector X la función funciona?
factor(1:3 , labels  = c("A","B")) #¿el numero de etiquetas debe de coincidir con el tamaño de X?
factor(1:3 , labels  = c("A","B","C"))
factor(rep(1:4,2) , exclude = 4 , labels = c("A","B","C"))
factor(rep(3:1,2) , labels  = c("B","A","C")) #¿Como asigna R las etiquetas?
factor(rep(3:1,2) , labels  = c("B","A","C") , ordered = TRUE)
factor(rep(1:3,2) , labels  = c("B","A","C") , ordered = TRUE)
levels(factor(1:3))
#Matriz : Un vector con una dimensión extra al menos, contiene un mismo tipo de dato
# matrix(data = NA , nrow = 1 , ncol =1, byrow = FALSE , dimnames = NULL)
# dimnames : Una lista de tamaño = 2 (length = 2) con el nombre de la fila y columna Respectivamente!!!
matrix(data = c(1,2,3,4,5,6))
matrix(data = c(1,2,3,4,5,6), nrow=2)
matrix(data = c(1,2,3,4,5,6), nrow=2 , byrow=TRUE)
matrix(data = c(1,2,3,4,5,6), nrow=2 , byrow=TRUE , dimnames = list(c("1","2"), c("Tengo","Mucho","Sueño")))
matrix(data = c(1,2,3,4,5,6), ncol=2)
matrix(data = c(1,2,3,4,5,6), ncol=2 , byrow=TRUE)
matrix(data = c(1,2,3,4,5,6,7,8), ncol=2 , dimnames = list(c(1:4) ,c("Tengo","Sueño")))

#x <- matrix(data = c(1:100), ncol=2 )
#matrix(data = x , ncol=ncol(x) , dimnames=list(c(1:nrow(x)),c("Tengo","Sueño")))

#Marco de Datos :Hoja de datos
# Es una lista que pertece a una clasa denominada "Data.Frame"
# Los componentes deben ser vectores ( incluso otras hojas de datos)


