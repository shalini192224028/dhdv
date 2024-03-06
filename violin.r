library(vioplot)  
# Giving a name to our chart.  
png(file = "vioplot.png")  
#Creating data for vioplot function  
x1 <- mtcars$mpg[mtcars$cyl==4]  
x2 <- mtcars$mpg[mtcars$cyl==6]  
x3 <- mtcars$mpg[mtcars$cyl==8]  
#Creating vioplot function  
vioplot(x1, x2, x3, names=c("4 cyl", "6 cyl", "8 cyl"),  
        col="green")  
#Setting title   
title("Violin plot example")  
# Saving the file.  
dev.off()  
