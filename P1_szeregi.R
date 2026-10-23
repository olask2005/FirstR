library('openxlsx')
setwd('C:/Users/user/Desktop/STUDIA 2/Szeregi czas')
dane1 <- read.csv('C:/Users/user/Desktop/STUDIA 2/Szeregi czas/MRTSSM7225USN.csv')
dane1ts <-as.ts(dane1,frequency=12)
plot(dane1ts)
class(dane1)
dane1ts <- as.ts(dane1,start=c(2000,1),frequency=12)
dane1_zoo <- zoo(dane1$Retail.Sales..Restaurants.and.Other.Eating.Places, order.by=dane1$observation_date)
install.packages("zoo")
library(zoo) 
plot(dane1_zoo,main="Sprzedaż detaliczna: Restauracje i inne miejsca gastronomiczne",xlab="Data", ylab="Sprzedaż", type="l", col="blue") 
plot(as.vector(dane1ts))


is.ts(sunspot.month)
dane2<- sunspot.month
plot(sunspot.month)
help("sunspot.month")
plot(as.vector(sunspot.month))
