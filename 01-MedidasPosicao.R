# Estat�stica B�sica

# Parte 1 - Medidas de Posi��o

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

#Carregando o dataset.
Vendas <- read.csv("Vendas.csv",fileEncoding = "windows-1252")

# Resumo do dataset
View(Vendas)
str(Vendas)
summary(Vendas$Valor)
summary(Vendas$Custo)

# M�dia
mean(Vendas$Valor)
mean(Vendas$Custo)

# M�dia Ponderada
weighted.mean(Vendas$Valor, w = Vendas$Custo)

# Mediana
median(Vendas$Valor)
median(Vendas$Custo)

#Criando a fun��o moda
moda <- function(x) {
  valor_unico <- unique (x)
  valor_unico [which.max(tabulate(match(x,valor_unico)))]
}

# Obtendo o resultado da Moda
resultado <- moda(Vendas$Valor)
print(resultado)

resultado_custo <- moda(Vendas$Custo)
print(resultado_custo)

#Instalando o pacote gr�fico ggplot2
install.packages("ggplot2")
library(ggplot2)

#Criando o gr�fico
ggplot(Vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
                 labs(title = "M�dia de Valor por Estado")