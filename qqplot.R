prob01 <- function(file_name, extra_name, g_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  csv_extra <- read.table(extra_name, header = TRUE, sep = ",")
  code <- data.frame(exames=csv['Exames'], time=csv['X0.1.1'])
  code_extra <- data.frame(exames=csv_extra['Exames'], time=csv_extra['X0.1.1'])
  code <- rbind(code, code_extra)
  qqnorm(code$X0.1.1, pch=16, frame=FALSE)
  qqline(code$X0.1.1, col="steelblue", lwd=2)
}

par(mfrow = c(1,1))
prob01("testes/csv/testes_code1.csv", "testes/csv/extra_code1_prob10.csv")
prob01("testes/csv/testes_code2.csv", "testes/csv/extra_code2_prob10.csv")
