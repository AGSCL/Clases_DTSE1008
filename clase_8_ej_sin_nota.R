set.seed(3422);cbind.data.frame(tipo_personalidad=sample(rep(c("A","B"),80), 78, replace=F),
                                signo=sample(rep(c("leo", "virgo", "escorpión", "sagitario", "acuario", "piscis"),40), 78, replace=F))-> zodiaco_perso

table(zodiaco_perso$signo, zodiaco_perso$tipo_personalidad)

library(dplyr)
library(janitor)

zodiaco_perso %>% 
  janitor::tabyl(signo, tipo_personalidad)


round(prop.table(table(zodiaco_perso$signo, zodiaco_perso$tipo_personalidad),2),2)

chisq.test(zodiaco_perso$signo, zodiaco_perso$tipo_personalidad)

set.seed(3872);cbind.data.frame(sexo=sample(rep(0:1,40), 40, replace=F),deporte=sample(rep(1:3,40), 40, replace=F))-> deporte_sex


table(deporte_sex$deporte,deporte_sex$sexo)

chisq.test(deporte_sex$deporte,deporte_sex$sexo)

Una empresa de internet me da 500 minutos por 15000 pesos, mientras que otra me da 566 minutos por 17000 pesos. ¿Cuál me conviene comprar?
  
  15000/500

17000/566