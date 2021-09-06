load(url("https://github.com/pjcarozzi/riclpm/raw/main/documentos/data/elsoc_onoffline.Rdata"))


mean(elsoc$edad, na.rm=T)
hist(elsoc$edad)

table(elsoc$educ, elsoc$sexo)

attr(elsoc$educ,"labels")


max(prop.table(table(elsoc$marchw01)))

attr(elsoc$marchw01,"label")
hist(elsoc$marchw01)

attr(elsoc$marchw01,"labels")
#*La menos frecuente es la 5, la más frecuente es la 1

library(dplyr)

barplot(n ~ marchw01, 
        data=elsoc %>% group_by(marchw01) %>% count())
#similar
count(group_by(elsoc,marchw01) )

barplot(Freq~ Var1,data=data.frame(table(elsoc$marchw01)))


table(elsoc$marchw01)