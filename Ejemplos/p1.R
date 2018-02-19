GenDatos <- function(){
	x1 = rnorm(12, mean=55, sd=15)
	x2 = rnorm(15, mean=60, sd=10)
	x3 = rnorm(11, mean=46, sd=15)
	x4 = rnorm(14, mean=55, sd=17)
	x5 = rnorm(14, mean=58, sd=12)
	
	xx = round(c(x1, x2, x3, x4, x5))
	yy = c(rep(1, 12), rep(2, 15), rep(3,11), rep(4,14), rep(5,14))
	
	return(data.frame(xx, yy))
	
}

datos = GenDatos()
print(datos)
attach(datos)

m1 = mean(xx[yy == 1])
m2 = mean(xx[yy == 2])
m3 = mean(xx[yy == 3])
m4 = mean(xx[yy == 4])
m5 = mean(xx[yy == 5])

n1 = length(xx[yy == 1])
n2 = length(xx[yy == 2])
n3 = length(xx[yy == 3])
n4 = length(xx[yy == 4])
n5 = length(xx[yy == 5])

s1 = sd(xx[yy == 1])
s2 = sd(xx[yy == 2])
s3 = sd(xx[yy == 3])
s4 = sd(xx[yy == 4])
s5 = sd(xx[yy == 5])

err = c(s1/sqrt(n1), s2/sqrt(n2),s3/sqrt(n3),s4/sqrt(n4),s5/sqrt(n5))

mm = c(m1, m2, m3, m4, m5)

b=barplot(c(m1, m2, m3, m4, m5), ylim=c(0, 100))

for (i in 1:5){
	points(c(b[i], b[i]), c(mm[i]-err[i], mm[i]+err[i]), type='l')
}




