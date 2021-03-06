# Estat�stica B�sica

# Parte 3 - Medidas de Posi��o Relativa

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

# Carregando o dataset.
Vendas <- read.csv("Vendas.csv",fileEncoding = "windows-1252")

# Resumo dos dados
head(Vendas)
tail(Vendas)
View(Vendas)

# Medidas de Tend�ncia Central
summary(Vendas$Valor)
summary(Vendas[c('Valor','Custo')])

# Vari�veis Num�ricas
mean(Vendas$Valor)
median(Vendas$Valor)
quantile(Vendas$Valor)
quantile(Vendas$Valor, probs = c(0.01,0.99))
quantile(Vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(Vendas$Valor)
range(Vendas$Valor)
diff(range(Vendas$Valor))
