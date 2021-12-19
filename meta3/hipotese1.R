box <- function(file_name) {
  # read file and do a boxplot to show the time differences
  csv <- read.table(file_name, header = TRUE, sep = ",")
  boxplot(Time ~ Code, data = csv)
  if (file_name == "testes/hipotese1/h1_30ex30prob_input1_box.csv") {
    boxplot(Time ~ Code, data = csv, ylim=c(0,5))
  } else if (file_name == "testes/hipotese1/h1_30ex30prob_input2.csv") {
    boxplot(Time ~ Code, data = csv, ylim=c(0,2))
  } else if (file_name == "testes/hipotese1/h1_30ex30prob_input3.csv") {
    boxplot(Time ~ Code, data = csv, ylim=c(0,2))
  } else if (file_name == "testes/hipotese1/h1_40ex10prob_input1.csv") {
    boxplot(Time ~ Code, data = csv, ylim=c(0,2))
  } else if (file_name == "testes/hipotese1/h1_40ex10prob_input2.csv") {
    boxplot(Time ~ Code, data = csv, ylim=c(0,1))
  } else if (file_name == "testes/hipotese1/h1_40ex10prob_input3.csv") {
    boxplot(Time ~ Code, data = csv, ylim=c(0,10))
  }
}

check_norm <- function(file_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  # check if the data is normalized to see if ANOVA can be used
  library("dplyr")
  library("ggpubr")
  csv <- ToothGrowth
  set.seed(1234)
  dplyr::sample_n(csv, 10)
  library("car")
  qqPlot(csv$len, xlab = "theoretical", ylab = "sample")
}

anova_test <- function(file_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  aov.out = aov(Time ~ Code, data = csv)
  print(summary(aov.out))
  plot(aov.out)
}

box <- function(file_name) {
  # read file and do a boxplot to show the time differences
  csv <- read.table(file_name, header = TRUE, sep = ",")
}

samples = 100
ttest <- function(file_name, sample_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  vcodes <- unlist(csv, use.names = FALSE)
  code1 <- vcodes[1:100]
  code2 <- vcodes[101:200]
  diff <- code1 - code2
  qqnorm(diff, main = sample_name)
  qqline(diff)
  print(t.test(code1, code2, paired = TRUE, conf.level = 0.95))
}

ttest2 <- function(file_name) {
  csv <- read.table(file_name, header = TRUE, sep = ",")
  vcodes <- unlist(csv, use.names = FALSE)
  par(mfrow = c(1, 2))
  code1 <- vcodes[1:100]
  qqnorm(code1, main = "code1")
  code2 <- vcodes[101:200]
  qqnorm(code2, main = "code2")
  m_code1 <- mean(code1)
  sd_code1 <- sd(code1)
  m_code2 <- mean(code2)
  sd_code2 <- sd(code2)
  mean_x = m_code1 - m_code2
  sd_x = sqrt(((sd_code1**2)/samples) + ((sd_code2**2)/samples))
  t = mean_x / sd_x
  print(t)
}

# par(mfrow = c(1,3))
# ttest("testes/hipotese1/h1_30ex30prob_input1.csv", "Sample 1 - 30 Exames/Prob 0.3")
# ttest("testes/hipotese1/h1_30ex30prob_input2.csv", "Sample 2 - 30 Exames/Prob 0.3")
# ttest("testes/hipotese1/h1_30ex30prob_input3.csv", "Sample 3 - 30 Exames/Prob 0.3")
# ttest("testes/hipotese1/h1_40ex10prob_input1.csv", "Sample 1 - 40 Exames/Prob 0.1")
# ttest("testes/hipotese1/h1_40ex10prob_input2.csv", "Sample 2 - 40 Exames/Prob 0.1")
# ttest("testes/hipotese1/h1_40ex10prob_input3.csv", "Sample 3 - 40 Exames/Prob 0.1")
