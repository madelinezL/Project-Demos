library(MASS)
library(vars)
library(forecast)
library(smooth)
library(tidyverse)
library(fpp2) 

#import data, Residential Sector (abbr.CS)#
CS <- read.csv ("~/Desktop/RBAC Q1_Commercial.csv")
summary(CS)


head(CS)


CS$Demand <- as.numeric(as.character(CS$Demand))
CS$Price <- as.numeric(as.character(CS$Price))
CS$GDP<- as.numeric(as.character(CS$GDP))
CS$Temperature<- as.numeric(as.character(CS$Temperature))
CS$Policy.A <- as.factor(as.character(CS$Policy.A))
CS$Policy.B <- as.factor(as.character(CS$Policy.B))
CS$Policy.C <- as.factor(as.character(CS$Policy.C))


class(CS$Demand)
class(CS$Price)
class(CS$GDP)
class(CS$Temperature)
class(CS$Policy.A)
class(CS$Policy.B)
class(CS$Policy.C)


demand=diff(Demand)
price=diff(Price)
gdp=diff(GDP)
population=diff(Population)
temperature=diff(Temperature)
policy.a=diff(Policy.A)
policy.b=diff(Policy.B)
policy.c=diff(Policy.C)



bind=cbind(demand, price, gdp,population,temperature, policy.a, policy.b, policy.c)

bind_VAR = VAR (bind, type='const', lag.max=2, ic= "AIC")
bind_VAR



#Other Methods#


#simple exponential smoothing#
#with seasonality#

Demand_2 <- ts(CS$Demand, frequency=12)
Demand_2

plot.ts(Demand_2, xlab = "Time", ylab="Demand")

HW1 <- HoltWinters(Demand_2, alpha=0.2, beta=0.1, gamma=0.1) #alpha weighted value, beta trend, gamma, seasonal#
HW1

HW2 <- HoltWinters(Demand_2)
HW2

#plot the fitted value#
plot.ts(Demand_2, ylab="Demand")
lines(HW1$fitted[,1], lty=2, col="blue")
lines(HW2$fitted[,1], lty=2, col="red")

#predict the future#
HW2.pred <- predict( HW2,120,prediction.interval=TRUE)
HW2.pred

#plot the prediction#

plot.ts(Demand_2,
        ylab="Demand")
lines(HW2$fitted[,1], lty=2, col="red")
lines(HW2.pred[,1], col="blue")  #fitted value prediction#
lines(HW2.pred[,2], lty=2, col="seagreen") #upper bound prediction#
lines(HW2.pred[,3], lty=2, col="grey") #lower bound prediction#


#Simple Linear Regression#
SLR <- lm(Demand ~ Price + GDP + Population + Temperature + Policy.A + Policy.B + Policy.C, data = CS)
anova(SLR)
round(summary(SLR)$r.squared,3)
round(summary(SLR)$coef,3)


#Cobb-Douglas Demand Fn, Log#
CDF <- lm(log(Demand) ~ log(Price) + log(GDP) + log(Population) + log(Temperature), data = CS)
anova(CDF)
round(summary(CDF)$r.squared,3)
round(summary(CDF)$coef,3)

