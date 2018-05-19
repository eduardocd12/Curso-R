# © Eduardo Castro Dávila
# eduardocd1203@gmail.com

## Temas tratados:
## Tratar NA's (omitir o reemplazar)
## Uso de librería HMisc
## Mostrar resumen de dataframe de total de registros con valor o con NA's
## Uso de librería MICE

data1<-fromJSON('Tema1/Data/students.json')
data2<-fromJSON('Tema1/Data/student-courses.json')
data3<-read.csv('Tema1/Data/housing-with-missing-value.csv')

## Ver minimo, maximo, mediana de cada columna
summary(data3)

## Eliminar todas las observaciones que tengan NA
na.omit(data3)

## Cambiar NA por media (utilizando librería MISC)
## También puede reemplazarse por Median o por un valor específico
data3.copy<-data3
data3.copy$ptratio<-impute(data3.copy$ptratio, mean)
data3.copy$rad<-impute(data3.copy$rad, mean)
summary(data3.copy)

## Analizar la tabla, muestra cuántas columnas tienen valores y cuantas tienen NA's
## Utiliza librería MICE
md.pattern(data3)
