samples = 100
ttest <- function(file_name, sample_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  vcodes <- unlist(csv, use.names = FALSE)
  code1 <- vcodes[1:100]
  code2 <- vcodes[101:200]
  diff <- code1 - code2
  shapiro.test(diff)
  qqnorm(diff, main = sample_name)
  qqline(diff)
  t.test(code1, code2, paired = TRUE, conf.level = 0.95)
  print(wilcox.test(code1, code2, paired = TRUE))
}

valor_critico = 1956
ranked <- function(file_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  vcodes <- unlist(csv, use.names = FALSE)
  code1 <- vcodes[1:100]
  code2 <- vcodes[101:200]
  diff <- code1 - code2
  sinal <- sign(diff)
  frank <- rank(diff)
  sumPos <- 0
  sumNeg <- 0
  for (i in 1:100) {
    if (sinal[i] < 0) {
      sumNeg = sumNeg + frank[i]
    } else if (sinal[i] > 0) {
      sumPos = sumPos + frank[i]
    }
  }
  if (sumNeg > sumPos) {
    W <- sumPos
  } else {
    W <- sumNeg
  }
  print(W)
  if (W > valor_critico) {
    print("hipótese nula não rejeitada")
  } else {
    print("hipótese nula é rejeitada")
  }
}

par(mfrow = c(1,3))
ttest("testes/hipotese1/h1_30ex30prob_input1.csv", "Sample 1 - 30 Exames/Prob 0.3")
ranked("testes/hipotese1/h1_30ex30prob_input1.csv")
ttest("testes/hipotese1/h1_30ex30prob_input2.csv", "Sample 2 - 30 Exames/Prob 0.3")
ranked("testes/hipotese1/h1_30ex30prob_input2.csv")
ttest("testes/hipotese1/h1_30ex30prob_input3.csv", "Sample 3 - 30 Exames/Prob 0.3")
ranked("testes/hipotese1/h1_30ex30prob_input3.csv")
ttest("testes/hipotese1/h1_40ex10prob_input1.csv", "Sample 1 - 40 Exames/Prob 0.1")
ranked("testes/hipotese1/h1_40ex10prob_input1.csv")
ttest("testes/hipotese1/h1_40ex10prob_input2.csv", "Sample 2 - 40 Exames/Prob 0.1")
ranked("testes/hipotese1/h1_40ex10prob_input2.csv")
ttest("testes/hipotese1/h1_40ex10prob_input3.csv", "Sample 3 - 40 Exames/Prob 0.1")
ranked("testes/hipotese1/h1_40ex10prob_input3.csv")