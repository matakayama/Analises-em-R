# Estatística Básica

# Parte 5 - Gráficos

# Gráficos em R - BarPlot, Pie Chart, Line Chart, Scatter Plot, Histograma e Treemap
# http://www.r-graph-gallery.com/

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

# Criação dos dados de teste
vetor_total_resultados = c(3, 12, 5, 18, 45)
names(vetor_total_resultados) = c("A","B","C","D","E")
vetor_total_resultados

# Criação do gráfico de barras (Barplot)
barplot(vetor_total_resultados)
barplot(vetor_total_resultados, col = c(1,2,3,4,5))

# Salvando o gráfico em disco
png("barplot.png", width = 480, height = 480)
barplot(vetor_total_resultados,
        col = rgb(0.5,0.1,0.6,0.6),
        xlab = "Categorias",
        ylab = "Valores",
        main = "Barplot in R",
        ylim = c(0,60))
dev.off()

# Importando o Ggplot2
install.packages("ggplot2")
library(ggplot2)
View(mtcars)

# Criando gráfico braplot com ggplot2
ggplot(mtcars, aes(x = as.factor(cyl))) +
         geom_bar()

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) +
  geom_bar() +
  scale_fill_manual(values = c("red", "green", "blue"))

# Criando novos dados fictícios
dados = data.frame(group = c("A","B","C","D"), value = c(33,62,56,67))
View(dados)

# Criação de gráfico barplot com ggplot2
ggplot(dados, aes(x = group, y = value, fill = group)) +
  geom_bar(width = 0.85, stat = "identity")

# Criando gráfico de pizza - Pie Chart
fatias <- c(4,12,14,16,8)
paises <- c("Brasil", "Estados Unidos", "Alemanha", "Reino Unido", "Espanha")
pie(fatias, labels = paises, main = "Leitura de Livros por Pessoa/Ano")

# Instalando o Pie Chart - Pizza - 3D
install.packages("plotrix")
library(plotrix)

# Criando gráfico Pie Chart 3D
fatias <- c(4,12,14,16,8)
paises <- c("Brasil", "Estados Unidos", "Alemanha", "Reino Unido", "Espanha")
pie3D(fatias, labels = paises, explode = 0.1, main = "Leitura de Livros por Pessoa/Ano")

# Criando gráfico Line Chart - Linhas

# Dados
carros <- c(1,3,6,4,9)
caminhoes <- c(2,5,4,5,12)

# Plot
plot(carros, type = "o", col = "blue", ylim = c(0,12))

lines(caminhoes, type = "o", pch = 22, lty = 2, col = "red")

title(main = "Produção de Veículos", col.main = "red", font.main = 4)

# Criando Gráfico Boxplot
library(ggplot2)
View(mpg)

ggplot(mpg, aes(x = reorder(class, hwy), y = hwy, fill = class)) +
  geom_boxplot() +
  xlab("class") +
  theme(legend.position = "none")

# Criando gráfico Scatter Plot - Gráfico de Dispersão
data = data.frame(cond = rep(c("condition_1", "condition_2"), each = 10),
                  my_x = 1:100 + rnorm(100,sd=9), my_y = 1:100 + rnorm(100,sd=16))

ggplot(data, aes(x = my_x, y = my_y)) +
  geom_point(shape=1)

# Adicionar linha de regressão
ggplot(data, aes(x = my_x, y = my_y)) +
  geom_point(shape = 1) +
  geom_smooth(method = lm, color = "red", se = FALSE)

# Adicionar intervalo de confiança - Smooth
ggplot(data, aes(x = my_x, y = my_y)) +
  geom_point(shape = 1) +
  geom_smooth(method = lm, color = "red", se = TRUE)

# Criando gráfico Treemap
install.packages("treemap")
library(treemap)

#Dados
grupo = c(rep("grupo-1",4), rep("grupo-2",2), rep("grupo-3",3))
subgrupo = paste("subgroup", c(1,2,3,4,1,2,1,2,3), sep = "-")
valor = c(13,5,22,12,11,7,3,1,23)
dados = data.frame(grupo, subgrupo, valor)
View(dados)

# Labels
treemap(dados,
        index = c("grupo", "subgrupo"),
        vSize = "valor",
        type = "index",
        fontsize.labels = c(15, 12),
        fontcolor.labels = c("white", "orange"),
        fontface.labels = c(2,1),
        bg.labels = 220,
        align.labels = list(c("center", "center"), c("right", "bottom")),
        overlap.labels = 0.5,
        inflate.labels = F)

# Criando gráfico Histograma

# Dados
x <- mtcars$mpg

# Criando o histograma
h <- hist(x,
          breaks = 10,
          col = "red",
          xlab = "Milhas por Galão",
          main = "Histograma com Curva de Distribuição")

# Customizando o histograma
xfit <- seq(min(x), max(x), lenght = 40)
yfit <- dnorm(xfit, mean = mean (x), sd = sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col = "blue", lwd = 2)

# Criando Histograma com o ggplot2
library(ggplot2)

# Dataset
dados = data.frame(value = rnorm(10000))

# Tamanho das colunas
ggplot(dados, aes(x = value)) +
  geom_histogram(binwidth = 0.05)

# Cor uniforme
ggplot(dados, aes(x = value)) +
  geom_histogram(binwidth = 0.2, color = "white", fill = rgb(0.2, 0.7, 0.1,0.4))

# Cor proporcional
ggplot(dados, aes(x = value)) +
  geom_histogram(binwidth = 0.2, aes(fill = ..count..))