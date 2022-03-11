# Mini-Projeto 2

# Limpeza e Transformação de Dados com Power Query e Linguagem R

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

# Instalação dos pacotes
install.packages("dplyr") # Manipulação de Dados
install.packages("data.table") # Transformação de Dados
install.packages("ggplot2") # Gráficos

# Carregando os pacotes
library(dplyr)
library(data.table)
library(ggplot2)

# Carregando os dados
dados_iris <- iris
View(dados_iris)

# Sumarizando as médias de cada coluna
medias_iris <- summarize(group_by(dados_iris, Species),
                         media_sepal_length = mean(Sepal.Length),
                         media_sepal_width = mean(Sepal.Width),
                         media_petal_length = mean(Petal.Length),
                         media_petal_width = mean(Petal.Width))
View(medias_iris)

# Extraindo o valor inteiro das colunas decimais
dados_iris_id <- data.table(dados_iris)
View(dados_iris_id)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
dados_iris_id$Sepal.Width <- as.integer(dados_iris_id$Sepal.Width)
dados_iris_id$Petal.Length <- as.integer(dados_iris_id$Petal.Length)
dados_iris_id$Petal.Width <- as.integer(dados_iris_id$Petal.Width)
View(dados_iris_id)

# Gráfico com a relação de duas variáveis numéricas para as 3 categorias de uma variável categórica
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Largura e Comprimento das Pétalas") +
  labs(x = "Largura da Pétala",
       y = "Comprimento da Pétala") +
  theme_bw() +
  theme(title = element_text(size = 15, color = "turquoise4"))

# Função para executar no Power Bi
