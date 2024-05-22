data <- read.csv("DatasetappletonR.csv")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")


plot(data$TP, data$SWL,
     xlab = "Daily Precipitation Values (mm)",  
     ylab = "Daily Surface Water Levels (m)",  
     main = "Scatterplot of Daily Surface Water Levels (m) and Precipitation (mm)",  
     col = "blue",           
     pch = 16)     
lm_model <- lm(data$SWL ~ data$TP)
abline(lm_model, col = "red")


plot(data$Date, data$TP,
     xlab = "Date (2012)",  
     ylab = "Daily Precipitation Values (mm)",  
     main = "Scatterplot of Time (2012) and Precipitation (mm)",  
     col = "red",           
     pch = 16)     
lm_model <- lm(data$TP ~ data$Date)
abline(lm_model, col = "blue")

plot(data$Date, data$SWL,
     xlab = "Date (2012)",  
     ylab = "Daily Surface Water Levels (m)",  
     main = "Scatterplot of Time (2012) and Surface Water Levels (m)",  
     col = "red",           
     pch = 16)     
lm_model <- lm(data$SWL ~ data$Date)
abline(lm_model, col = "blue")