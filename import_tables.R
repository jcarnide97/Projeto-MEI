analise1 <- function(file_name, extra_name, g_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  lm.out = lm(csv$X0.1.1~csv$Exames)
  print(summary(lm.out))
  csv_extra <- read.table(extra_name, header = TRUE, sep = ",")
  code <- data.frame(exames=csv['Exames'], time=csv['X0.1.1'])
  code_extra <- data.frame(exames=csv_extra['Exames'], time=csv_extra['X0.1.1'])
  code <- rbind(code, code_extra)
  plot(code, pch=1, main=g_name, xlab='Número de exames', ylab='Tempo Necessário Slots', col=ifelse(code['X0.1.1']>=100, 'red', 'green'))
  abline(lm.out)
}

par(mfrow = c(1,1))
analise1("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv", "code1 - Prob = 0.1")
analise1("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "code2 - Prob = 0.1")
