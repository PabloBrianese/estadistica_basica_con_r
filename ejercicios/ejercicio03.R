# datos
x <- c(
22.03496,38.72421,26.08120,41.88097,43.79577,
13.96840,30.05176,42.19433,30.82933,27.66897,
44.34126,27.55963,35.03343,31.53587,15.88048,
42.44117,20.65210,13.85184,23.37960,44.26361,
42.09835,35.54114,33.79809,45.58901,34.30467,
36.06532,30.58372,32.25275,22.08769,17.35330,
44.54760,42.52363,35.47121,38.96293,13.27037,
28.37494,37.72946,19.66288,23.05497,20.17009,
17.20952,26.26683,26.23943,24.74362,17.53098,
17.07641,20.21703,27.98053,21.31487,41.04140,
13.97755,27.18853,39.07817,16.51290,31.14640,
19.33369,16.70063,37.55775,42.28186,24.93084,
34.61829,15.61104,25.24771,21.59521,39.60195,
27.39905,39.44944,39.52694,38.92543,27.10959,
37.59666,33.42194,36.12038,12.47082,28.29230,
19.78656,25.10929,32.87366,24.17542,16.15414,
20.56984,34.71629,26.37017,38.72057,15.87848,
26.94498,45.27862,42.21539,41.99601,18.28450,
16.80609,34.21789,23.89940,34.33975,23.12804,
18.70575,38.52387,15.56952,28.00775,29.49848,
32.44763,23.54301,28.73547,44.26261,28.54514,
42.12537,42.92822,32.73914,26.13829,17.35267,
43.62354,22.48996,14.47382,44.03774,36.46747,
17.19267,30.75766,44.24986,31.96416,25.93233
)

# localización
mean(x); median(x); mean(x, trim = 0.05)
quantile(x, probs = c(.1, .9))

# nuevos datos
y <- c(123.34, 78.23, 89.6, 1.2)
xx <- c(x, y)

# nueva localización
mean(x); mean(xx)
# CRECE
# Porque en un promedio todos los datos tienen igual peso,
# tanto los grandes como los pequeños, los que están acumulados
# y los que están dispersos

median(x); median(xx)
# PERMANECE ESTABLE
# Porque son pocos los nuevos datos en comparación con los existentes.
# Con precisión, más del 95% de los nuevos datos son preexistentes.
length(x) / length(xx)
# Además la distribución de x está concentrada alrededor de la mediana
# Podría suceder que sus valores se concentraran en múltiples grupúsculos
# disjuntos. En ese caso la mediana podría cambiar mucho
# si cambia el balance entre los grupúsculos.

mean(x, trim = 0.05); mean(xx, trim = 0.05)
# PERMANECE ESTABLE
# Porque se añaden pocos valores nuevos a la muestra
# (ver la reflexión en torno a la mediana)
# y porque la poda (trim) elimina las observaciones que provocan cambios mayores
# en el resultado de la media
quantile(x, probs = .01); quantile(xx, probs = .01)  # decrece
quantile(x, probs = .09); quantile(xx, probs = .09)  # permanece estable
