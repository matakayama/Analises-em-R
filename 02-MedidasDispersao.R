# Estat�stica B�sica

# Parte 2 - Medidas de Dispers�o

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

#Carregando o dataset.
Vendas <- read.csv("Vendas.csv",fileEncoding = "windows-1252")

# Resumo do dataset
View(Vendas)
str(Vendas)
summary(Vendas$Valor)

# Vari�ncia
var(Vendas$Valor)

# Desvio Padr�o
sd(Vendas$Valor)

