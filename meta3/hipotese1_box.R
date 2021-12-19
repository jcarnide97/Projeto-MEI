boxcode <- function(file_name, title) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  if (file_name == "testes/hipotese1/h1_30ex30prob_input1_box.csv") {
    janela <- c(0,10)
  } else if (file_name == "testes/hipotese1/h1_40ex10prob_input1_box.csv") {
    janela <- c(0,2)
  }
  boxplot(Time ~ Code, data = csv, ylim=janela, main = title)
}
par(mfrow = c(1,2))
boxcode("testes/hipotese1/h1_30ex30prob_input1_box.csv", "Boxplot Samples 1 - 30 Exames/Prob 0.3")
boxcode("testes/hipotese1/h1_40ex10prob_input1_box.csv", "Boxplot Samples 1 - 40 Exames/Prob 0.1")