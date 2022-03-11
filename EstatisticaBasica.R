# Estatística Básica

# Desafio 01

# Função para definir a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

# Função para ler o arquivo
Notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Resumo do tipo de dados e estatísticas
View(Notas)
str(Notas)
summary(Notas)
summary(Notas[c('TurmaA','TurmaB')])

# Cálculo das Médias
mean(Notas$TurmaA)
mean(Notas$TurmaB)

# Cálculo dos Desvios Padrões
sd(Notas$TurmaA)
sd(Notas$TurmaB)

# Função de Coeficiente de Variação
media_ta <- mean(Notas$TurmaA)
media_tb <- mean(Notas$TurmaB)

sd_ta <- sd(Notas$TurmaA)
sd_tb <- sd(Notas$TurmaB)

cvA <- sd_ta/media_ta*100
cvB <- sd_tb/media_tb*100

cvA
cvB

# Função para Moda
moda <- function(x) {
  valor_unico <- unique (x)
  valor_unico [which.max(tabulate(match(x,valor_unico)))]
}

moda(Notas$TurmaA)
moda(Notas$TurmaB)
