x = c(0.32,0.36,0.24,0.11,0.11,0.44,2.79,2.99,3.47,0.23,0.55,
      3.21,4.02,0.23)

# media
mean(x)
length(x)
sum(x) / length(x)

# media truncada
xx = c(x, 34)
mean(x); mean(xx)
mean(x, trim=.1)
mean(x, trim=.1); mean(xx, trim = .1)

# función de distribución
sort(x)
Fn = ecdf(x)
Fn(1)

# mediana y cuantiles
median(x)
quantile(x, probs = 0.27)
quantile(x, probs = 0.76)

# cuartiles
quantile(x, probs = c(0.25, 0.75))
quantile(x, probs = c(.25, .5, .75))

# varianza
var(x)
sd(x)

# rango
range(x)
min(x); max(x)
max(x) - min(x)
diff(range(x))
IQR(x)

summary(x)
