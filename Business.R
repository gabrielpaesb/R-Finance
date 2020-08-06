2+2
help(mean)
example(mean)
help(package = "ggplot2")
install.packages(c("stringsr","lubridate"))
library(stringsr)
library(dplyr)
library(lubridate)
aula_r <- 2
aula_r
"XYZ"==toupper("xyz")
hoje<- Sys.Date()
hoje
amanha<- hoje+1; print(amanha)
log(10)
log(10,10)


#Criando primeiro vetor

idade<- c(19,21,24,31,33,45,50)
nomes<- c("Joao","Maria","Jose","Maria2")


 Vou precisar apresentar um trabalho se vc quiser pode usar o computador
 idade <- c(19, 21, 24, 31, 33, 45, 50)
 sexo <- c("M", "M", "F", "F", "M", "F", "M")
 aluno_econ <- c(TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, FALSE)
 classes <- c(class(idade), class(sexo), class(aluno_econ))
 classes
 
 v1 <- c(1, 2, 3)
 v2 <- c("a", "b", "c")
 v3 <- c(v1, v2)
 v3
 x <- c(0,1,1,2,3,5,8,13,21,34)
 mean(x)
 median(x)
 var(x)
 sd(x)
 summary(x)
 length(x)
 min(x)
 max(x)
 sum(x)
 2 * x
 w <- c(21, 34, NA, 17, 25)
 mean(w)
 
 mean(w, na.rm = TRUE)
 sd(w, na.rm = T)
class(NA) 

idade <- c(22, 21, 37, 26, 40, 33, 27)
idade
idade_cres <- sort(idade)
idade_cres
idade_decres <- sort(idade, decreasing = TRUE)
idade_decres

x <- 1:7
x
y <- seq(from = 1, to = 10, by = 2)
y
 
 
id <- LETTERS[1:5]
id

id <- letters[1:5]
id 

j <- rep(2, times = 5)
j
 
receita <- c(43.92, 45.40, 48.27, 51.87, 56.52)
receita

firmas_pb <- data.frame(
   cod_firma = c(14532, 72475, 63896, 52749, 52290),
   nome_firma = c("Firma A", "Firma B", "Firma C", "Firma D", "Firma E"),
   receita = c(18.01, 21.41, 18.18, 100.69, 50.15),
   custo = c(12.34, 11.23, 9.67, 77.21, 23.67),
   pme = c(1, 0, 1, 0, 0)
   )
firmas_pb
getwd()
setwd("C:/Users/gabri/Documents/R/R Business/minicurso-r-master/Aula_1")
dir()
Estoque<- read.table("estoque.txt", sep = "",dec = ".", encoding = "UTF-8", header= T )
################################################################################################
install.packages("tidyr")
install.packages("dplyr")
install.packages("tibble")
install.packages("devtools")
devtools:: install_github("abjur/abjData")

library(tidyr)
library(dplyr)
library(tibble)
library(abjData)

#Utilizando gather()

tabela_1 <- tibble(pais    = c("AfeganistÃ£o", "Brasil", "China"),
                   "1999"     = c(745, 37737,  212258),
                   "2000"     = c(2666, 80488, 213766))
tabela_1

tidy_1 <- gather(tabela_1, key = "ano", value = "casos", "1999", "2000")
tidy_1
#Utilizando spread()
tabela_2 <- tibble(pais       = c("Afeganistcao", "Afeganiscao", 
                                  "Afeganistcao", "Afeganistcao",
                                  "Brasil", "Brasil", 
                                  "Brasil", "Brasil"),
                   ano        = c(1999, 1999, 2000, 2000,
                                  1999, 1999, 2000, 2000),
                   tipo       = c("casos", "populacao","casos", "populacao",
                                  "casos", "populacao","casos", "populacao"),
                   contagem   = c(745,    19987071,   2666,    20595360,
                                  37737,  172006362,  80488,   174504898))
tabela_2

tidy_2 <- spread(tabela_2, key = "tipo", value = "contagem")
tidy_2

getwd()
setwd("C:/Users/gabri/Documents/R/R Business/minicurso-r-master/Aula_2/Dados")
cliente<- read.csv("C:/Users/gabri/Documents/R/R Business/minicurso-r-master/Aula_2/Dados/cliente.csv")
contratos<- read.csv("C:/Users/gabri/Documents/R/R Business/minicurso-r-master/Aula_2/Dados/contrato.csv")
cliente
tidy_3 <- gather(cliente, key= "homem", value= "genero" , "mulher","homem")

id.emp     <- 1:11
nome.emp   <- c('Renato', 'Miguel', 'Paulo', 'PatrÃcia', 'InÃªs', 'Saulo', 'Diego', 'Maria', 'Jose',
                'Julia', 'Tiago')
idade      <- c(30, 31, 29, 30, 25, 30, 30, 35, 24, 31, 29)
uf         <- c('MG', 'DF', 'CE', 'DF', 'DF', 'DF', 'RJ', 'SP', 'RS', 'SC', 'BA')
id.cargo   <- c(4, 4, 4, 4, 5, 4, 6, 3, 1, 2, 8)
Empregados <- data.frame(id.emp, nome.emp, idade, uf, id.cargo)
Empregados

id.cargo   <- 1:7
nome.cargo <- c('TÃ©cnico', 'Assistente', 'Consultor', 'Analista', 'Auditor', 
                'Gerente', 'Gestor')
salario    <- c(7000, 4000, 15000, 11000, 10000, 13000, 20000)
Cargos     <- data.frame(id.cargo, nome.cargo, salario)
Cargos

inner_join(Empregados, Cargos, by = "id.cargo")

id.paciente <- 1:9
nome.abr    <- c("A.A.M", "S.S.G.F", "T.I.A", "L.O.S.M", "Y.Q.W", "F.A", "T.B.N", 
                 "J.J.L", "M.S.S")
exame.a     <- c(3.8, 3.8, 3.9, 4.0, 4.4, 3.8, 3.7, 3.6, 4.0)
exame.b     <- c(109.98, 109.90, 109.89, 109.99, 110.01, 109.95, 109.98, 109.93, 
                 110.00)
exame.c     <- c(0, 1, 1, 0, 1, 1, 0, 0, 1)
Pacientes   <- data.frame(id.paciente, nome.abr, exame.a, exame.b, exame.c)
Pacientes

id.paciente <- c(1, 4, 5, 7, 8, 11, 15, 25)
tp.remedio  <- c("A", "B", "A", "B", "A", "A", "B", "B")
Controle    <- data.frame(id.paciente, tp.remedio)
Controle

left_join(Pacientes, Controle, by = "id.paciente")

rotatividade<- left_join(cliente,contratos, by='cliente_id')


x <- c(1:10)
sqrt(sum(x))
x %>% sum() %>% sqrt()

pnud_min %>% select(ano, muni, uf, gini, pop) %>% 
  filter(uf == "PB")






