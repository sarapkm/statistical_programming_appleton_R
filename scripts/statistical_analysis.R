df <- read.csv("DatasetappletonR.csv")
SWL <- df$`SWL`
TP <- df$`TP`

tau_result <- cor.test(SWL, TP, method = "kendall")
tau <- tau_result$estimate
p_value <- tau_result$p.value

cat("Kendall's Tau:", tau, "\n")
cat("P-value:", p_value, "\n")

model <- lm(TP ~ SWL)
summary(model)

#Due to a very low Kendall's Tau, p-value and r squared value, the two variables (precipitation, surface water levels) have a very minor relationship if any at all.
#This means that this body of water recharges MOSTLY from other sources (ex: groundwater), and not from precipitation