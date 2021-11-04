prob01 <- function(file_name, extra_name, g_name) {
  csv <- read.csv(file_name)
  colnames(csv)[2] <- "0.1 slots"
  colnames(csv)[3] <- "0.1 time"
  colnames(csv)[4] <- "0.3 slots"
  colnames(csv)[5] <- "0.3 time"
  colnames(csv)[6] <- "0.5 slots"
  colnames(csv)[7] <- "0.5 time"
  colnames(csv)[8] <- "0.7 slots"
  colnames(csv)[9] <- "0.7 time"
  colnames(csv)[10] <- "0.9 slots"
  colnames(csv)[11] <- "0.9 time"
  csv_extra <- read.csv(extra_name)
  colnames(csv_extra)[2] <- "0.1 slots"
  colnames(csv_extra)[3] <- "0.1 time"
  code <- data.frame(exames=csv['Exames'], time=csv['0.1 time'])
  code_extra <- data.frame(exames=csv_extra['Exames'], time=csv_extra['0.1 time'])
  code <- rbind(code, code_extra)
  plot(code, pch=1, main=g_name, xlab='Número de exames', ylab='Tempo Necessário Slots', col=ifelse(code['X0.1.time']>=100, 'red', 'green'))
}

par(mfrow = c(1,2))
prob01("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv", "code1 - Prob = 0.1")
prob01("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "code2 - Prob = 0.1")
