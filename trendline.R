slots_time <- function(file_name, extra01, extra03, extra05, extra07, extra09, n_code) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  csv_extra01 <- read.table(extra01, header = TRUE, sep = ",")
  csv_extra03 <- read.table(extra03, header = TRUE, sep = ",")
  csv_extra05 <- read.table(extra05, header = TRUE, sep = ",")
  csv_extra07 <- read.table(extra07, header = TRUE, sep = ",")
  csv_extra09 <- read.table(extra09, header = TRUE, sep = ",")
  code01 <- data.frame(slots=csv['X0.1'], time=csv['X0.1.1'])
  colnames(code01)[1] <- "slots"
  colnames(code01)[2] <- "time"
  code03 <- data.frame(slots=csv['X0.3'], time=csv['X0.3.1'])
  colnames(code03)[1] <- "slots"
  colnames(code03)[2] <- "time"
  code01 <- rbind(code01, code03)
  code05 <- data.frame(slots=csv['X0.5'], time=csv['X0.5.1'])
  colnames(code05)[1] <- "slots"
  colnames(code05)[2] <- "time"
  code01 <- rbind(code01, code05)
  code07 <- data.frame(slots=csv['X0.7'], time=csv['X0.7.1'])
  colnames(code07)[1] <- "slots"
  colnames(code07)[2] <- "time"
  code01 <- rbind(code01, code07)
  code09 <- data.frame(slots=csv['X0.9'], time=csv['X0.9.1'])
  colnames(code09)[1] <- "slots"
  colnames(code09)[2] <- "time"
  code01 <- rbind(code01, code09)
  code_extra01 <- data.frame(slots=csv_extra01['X0.1'], time=csv_extra01['X0.1.1'])
  colnames(code_extra01)[1] <- "slots"
  colnames(code_extra01)[2] <- "time"
  code01 <- rbind(code01, code_extra01)
  code_extra03 <- data.frame(slots=csv_extra03['X0.3'], time=csv_extra03['X0.3.1'])
  colnames(code_extra03)[1] <- "slots"
  colnames(code_extra03)[2] <- "time"
  code01 <- rbind(code01, code_extra03)
  code_extra05 <- data.frame(slots=csv_extra05['X0.5'], time=csv_extra05['X0.5.1'])
  colnames(code_extra05)[1] <- "slots"
  colnames(code_extra05)[2] <- "time"
  code01 <- rbind(code01, code_extra05)
  code_extra07 <- data.frame(slots=csv_extra07['X0.7'], time=csv_extra07['X0.7.1'])
  colnames(code_extra07)[1] <- "slots"
  colnames(code_extra07)[2] <- "time"
  code01 <- rbind(code01, code_extra07)
  code_extra09 <- data.frame(slots=csv_extra09['X0.9'], time=csv_extra09['X0.9.1'])
  colnames(code_extra09)[1] <- "slots"
  colnames(code_extra09)[2] <- "time"
  code01 <- rbind(code01, code_extra03)
  code01[code01 < 0] <- NA  # ignore -1
  plot(code01, pch=1, main=n_code, xlab='Número de Time Slots', ylab='Tempo Execução')
}

par(mfrow = c(1,2))
slots_time("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv", "testes/csv/extra_code1_prob30.csv", "testes/csv/extra_code1_prob50.csv", "testes/csv/extra_code1_prob70.csv", "testes/csv/extra_code1_prob90.csv", "code1")
slots_time("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv", "testes/csv/extra_code2_prob30.csv", "testes/csv/extra_code2_prob50.csv", "testes/csv/extra_code2_prob70.csv", "testes/csv/extra_code2_prob90.csv", "code2")