# Estatística Básica

# Parte 4 - Tabela de Frequência

# Definindo a pasta de trabalho
setwd("C:/Users/marina.takayama1/Desktop/Cap12")
getwd()

# Carregando o dataset.
dados <- read.table("Usuarios.csv",
                    dec = ".",
                    sep = ",",
                    h = T,
                    fileEncoding = "windows-1252")
View(dados)

# Sumarização
names(dados)
str(dados)
summary(dados$salario)
mean(dados$salario)

# Tabela de Frequências Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequências Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Ajuste da Porcentagem de Frequências Relativas
p_freq_rel <- 100 *prop.table(freq_rel)
View(p_freq_rel)

# Adicionar linhas à Tabela de Frequência
View(freq)
freq <- c(freq,sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# Cálculo da Frequência Relativa e Frequência Proporcional
freq_rel <- c(freq_rel,sum(freq_rel))
p_freq_rel <- c(p_freq_rel,sum(p_freq_rel))

# Tabela Final com todos os valores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel,digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)