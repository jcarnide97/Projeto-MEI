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
  colnames(csv_extra)[2] <- "0.5 slots"
  colnames(csv_extra)[3] <- "0.5 time"
  code10 <- data.frame(exames=csv['Exames'], time=csv['0.1 time'])
  code30 <- data.frame(exames=csv['Exames'], time=csv['0.3 time'])
  code50 <- data.frame(exames=csv['Exames'], time=csv['0.5 time'])
  code70 <- data.frame(exames=csv['Exames'], time=csv['0.7 time'])
  code_extra <- data.frame(exames=csv_extra['Exames'], time=csv_extra['0.5 time'])
  #code <- rbind(code, code_extra)
  boxplot(code10[151:180,'X0.1.time'], main="20 Exames")
  boxplot(code30[31:60,'X0.3.time'], main="20 Exames")
  boxplot(code50[61:90,'X0.5.time'], main="30 Exames")
  boxplot(code70[91:120,'X0.7.time'], main="40 Exames")
  #boxplot(code[151:180,'X0.7.time'], main="60 Exames")
  #boxplot(code[181:210,'X0.7.time'], main="70 Exames")
  #plot(code, pch=1, main=g_name, xlab='N?mero de exames', ylab='Tempo Necess?rio Slots', col=ifelse(code['X0.1.time']>=100, 'red', 'green'))
}

par(mfrow = c(1, 5))
prob01("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob50.csv", "code1 - Prob = 0.5")
#prob01("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "code2 - Prob = 0.3")

