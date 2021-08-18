#Anova de una vía 
library(agricolae)
anova<-aov(Var~factor1,data = df) # "Var" es el nombre de la variable y "factor1" el factor cuyos tratamientos se desea evaluar. 
summary(anova)
# Gráficas de los residuales para verificar supuestos
par(mfrow=c(1,3))
plot(anova0)
#Test de LSD para comparación de medias
print(LSD.test(anova,"factor1"))
#Contrastes
attach(df)
names(df)
factor1=factor(df$factor1,levels=c("Tratamiento 1","Tratamiento 2","Tratamiento 3"),labels = c("Tratamiento 1","Tratamiento 2","Tratamiento 3"))
c1=c(-1,0,1)
c2=c(1,-2,1)
contrasts(factor1)=cbind(c1,c2)
anova<-aov(Var~factor1)
summary.lm(anova)

