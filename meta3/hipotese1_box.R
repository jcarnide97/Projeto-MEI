boxcode <- function(file_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  janela <- c(0,10)
  boxplot(Time ~ Code, data = csv, ylim=janela, main = "Boxplot Samples 1 - 30 Exames/Prob 0.3")
}

boxcode("testes/hipotese1/h1_30ex30prob_input1_box.csv")