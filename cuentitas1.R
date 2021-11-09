# Datos de nitritos
x = c(0.32,0.36,0.24,0.11,0.11,0.44,2.79,2.99,3.47,0.23,0.55, 
      3.21,4.02,0.23)

# Clasificación de las muestras
y = c(1,1,1,1,1,1,1,1,2,2,2,2,2,2)

# Conteos
table(y)

# Frecuencias
prop.table(table(y))

# Diagrama de barras
library(ggplot2)
df = data.frame(y)
ggplot(df, aes(x=y)) + geom_bar()

# Histograma
df = data.frame(x)
ggplot(df, aes(x=x)) + geom_histogram()

# Diagrama de cajas
df = data.frame(x)
ggplot(df, aes(y=x)) + geom_boxplot()

# Añadimos valores extremos
x1 = c(x, c(7, 9))

# Nuevo diagrama de cajas
df = data.frame(x1)
ggplot(df, aes(y=x1)) + geom_boxplot()

# Comparación de submuestras
df = data.frame(x, y)
ggplot(df, aes(y=x, group=y)) + geom_boxplot()

# Estimaciones de densidad por núcleos
df = data.frame(x)
ggplot(df, aes(x=x)) + geom_density()  # Núcleo gausiano

# Función de distribución muestral
# Gráficas de la ecdf
df = data.frame(x)
ggplot(df, aes(x=x)) + stat_ecdf(geom = "point")
ggplot(df, aes(x=x)) + stat_ecdf(geom = "step")

# Evaluación puntual de la ecdf
ecdf(x)(1)
ecdf(x)(4)
ecdf(x)(10)
