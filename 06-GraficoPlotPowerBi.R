# Estat�stica B�sica

# Parte 6 - Criando gr�fico no Power Bi com Linguagem R

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Carregando o ggplot2
library(ggplot2)

# Criando o gr�fico
qplot(Valor, Custo, data = vendas)

