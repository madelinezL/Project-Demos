library(MASS)
library(vars)

#import data, Residential Sector (abbr.RS)#
RS <- read.csv("~/Desktop/RBAC Q1_Residential.csv")
View(RS)
summary(RS)


RS$Demand <- as.numeric(as.character(RS$Demand))
RS$Price <- as.numeric(as.character(RS$Price))
RS$GDP<- as.numeric(as.character(RS$GDP))
RS$Temperature<- as.numeric(as.character(RS$Temperature))
RS$Policy.A <- as.factor(as.character(RS$Policy.A))
RS$Policy.B <- as.factor(as.character(RS$Policy.B))
RS$Policy.C <- as.factor(as.character(RS$Policy.C))


class(RS$Demand)
class(RS$Price)
class(RS$GDP)
class(RS$Temperature)
class(RS$Policy.A)
class(RS$Policy.B)
class(RS$Policy.C)



attach(RS)
demand=diff(Demand)
price=diff(Price)
gdp=diff(GDP)
population=diff(Population)
temperature=diff(Temperature)
policy.a=diff(Policy.A)
policy.b=diff(Policy.B)
policy.c=diff(Policy.C)



bind_2=cbind(demand,price,gdp,population, policy.a, policy.b, policy.c)


bind_VAR_2 = VAR(bind_2, type='const', lag.max=2, ic= "AIC")
bind_VAR_2

