normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

scatter <- function(file_name, extra_name, g_name, eq_reta) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  csv_extra <- read.table(extra_name, header = TRUE, sep = ",")
  code <- data.frame(exames=csv['Exames'], time=csv['X0.1.1'])
  code_extra <- data.frame(exames=csv_extra['Exames'], time=csv_extra['X0.1.1'])
  code <- rbind(code, code_extra)
  code$logtime = log(code$X0.1.1)
  lm.out = lm(code$logtime~code$Exames)
  print(summary(lm.out))
  plot(code$Exames, code$X0.1.1, main = g_name, xlab = 'N�mero de Exames', ylab = "Tempo de Execu��o", col=ifelse(code['X0.1.1']>=100, 'red', 'green'))
  #plot(code$Exames,code$logtime, main = g_name, xlab = 'N�mero de Exames', ylab = 'log(Tempo Execu��o)')
  #abline(lm.out)
}

par(mfrow = c(1,2))
scatter("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv", "code1 - Prob = 0.1", "y = -10.011334 + 0.177518x")
scatter("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "code2 - Prob = 0.1", "y = -10.609950 + 0.185835x")

# Calculos feitos - manualmente ou atrav�s do excel
# --------------------------------- code1  ---------------------------------
# Valores pr�ticos
# -> r^2 = 0.795
# -> r = 0.8916277
# y = 
# --------------------------------- code2  ---------------------------------
# Valores pr�ticos
# -> r^2 = 0.8128
# -> r = 0.9015542
