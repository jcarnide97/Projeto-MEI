normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

scatter <- function(file_name, extra_name, g_name, eq_reta) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  csv_extra <- read.table(extra_name, header = TRUE, sep = ",")
  code <- data.frame(exames=csv['Exames'], time=csv['X0.1.1'])
  code_extra <- data.frame(exames=csv_extra['Exames'], time=csv_extra['X0.1.1'])
  code <- rbind(code, code_extra)
  # Normalization - same shit tbh
  #v_exames <- as.vector(code['Exames'])
  #v_time <- as.vector(code['X0.1.1'])
  #v_time <- normalize(v_time)
  #code.data <- data.frame(v_exames, v_time)
  lm.out = lm(code$X0.1.1~code$Exames)
  print(summary(lm.out))
  plot(code, pch=1, main=g_name, xlab='Número de exames', ylab='Tempo Necessário Slots', col=ifelse(code['X0.1.1']>=100, 'red', 'green'))
  abline(lm.out)
  text(60, 50, eq_reta)
}

par(mfrow = c(1,2))
scatter("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv", "code1 - Prob = 0.1", "y = - 33.0219 + 1.50791x")
scatter("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "code2 - Prob = 0.1", "y = - 33.2089 + 1.50633x")

# Calculos feitos - manualmente ou através do excel
# --------------------------------- code1  ---------------------------------
# Valores práticos
# -> r^2 = 0.7838
# -> r = 0.8853
# Valores teoricos:
# -> SST = 734608.2366
# -> SSE = 172546.637
# -> SSR = 562061.5996
# -> r^2 = 0.7651
# -> r = 0,8747
# --------------------------------- code2  ---------------------------------
# Valores práticos
# -> r^2 = 0.7718
# -> r = 0.8785
# Valores teoricos:
# -> SST = 726135.643
# -> SSE = 165540.9444
# -> SSR = 560594.6986
# -> r^2 = 0,7720
# -> r = 0,8786
