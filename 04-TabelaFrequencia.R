# Estat�stica B�sica

# Parte 4 - Tabela de Frequ�ncia

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

# Sumariza��o
names(dados)
str(dados)
summary(dados$salario)
mean(dados$salario)

# Tabela de Frequ�ncias Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequ�ncias Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Ajuste da Porcentagem de Frequ�ncias Relativas
p_freq_rel <- 100 *prop.table(freq_rel)
View(p_freq_rel)

# Adicionar linhas � Tabela de Frequ�ncia
View(freq)
freq <- c(freq,sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# C�lculo da Frequ�ncia Relativa e Frequ�ncia Proporcional
freq_rel <- c(freq_rel,sum(freq_rel))
p_freq_rel <- c(p_freq_rel,sum(p_freq_rel))

# Tabela Final com todos os valores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel,digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)