normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

scatter <- function(file_name, extra_name, g_name) {
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
  media <- mean(code[,'X0.1.1'])
  print(media)
}

par(mfrow = c(1,2))
scatter("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv", "code1 - Prob = 0.1")
scatter("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "code2 - Prob = 0.1")
