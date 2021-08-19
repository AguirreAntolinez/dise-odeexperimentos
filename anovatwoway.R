#Anova de dos vías 
library(agricolae)
anova<-aov(Var~factor1+factor2,data = df) # "Var" es el nombre de la variable y "factorn" n=1,2,...n es el factor cuyos tratamientos se desea evaluar. 
summary(anova)
# Gráficas de los residuales para verificar supuestos
par(mfrow=c(1,3))
plot(anova)
#Con interacciones
anova<-aov(Var~factor1*factor2,data = df)
