# Vetores ------------------------------------------------------------------------------------

# Vetor com dados numéricos
x <- c(10, 20, 30)

# Mostrando o vetor x
x

# Vetor de caracteres
y <- c("João", "Ana", "Pedro Henrique")

# Mostrando o vetor y
y

# Convertendo um vetor de caracteres em fator
w <- factor(c("Masculino", "Feminino", "Masculino"))

# Mostrando os níveis
levels (w)

# Criando um vetor convertido em fator com níveis não ordenados
cs <- factor(c("media", "baixa", "media", "alta", "baixa", "baixa", "alta", "media", "alta", "media"))

# Ordenando os níveis do fator cs
cs <- factor(cs, ord=T, levels=c("baixa", "media", "alta"))

# Mostrando o objeto cs
cs

#Sequência de 1 a 50, com intervalo igual a 1
seq(1, 50, 1)

# Sequência de 1 a 50, com intervalo igual a 5
seq(1, 50, 5)

# Repetição do número 1 três vezes
rep(1, 3)

# Repetição dos números de 1 a 5 duas vezes
rep(1:5, 2)

# Repetição dos números 0 e 1, repetidos 10 vezes, alternadamente
rep(c(0, 1), 10)

# Repetição dos números 0 e 1, repetidos 10 vezes, sem alternar
rep(c(0, 1), each=10)

# ou ainda
c(rep(0, 10), rep(1, 10))

# Repetição da palavra "Sim" dez vezes
rep("Sim", 10)

# Seleciona o primeiro elemento do vetor x
x <- c(10, 20, 30, 40, 50)
x[1]

# Seleciona os elementos do vetor x nas posições 1, 3, e 5
x[c(1, 3, 5)]

# Seleciona os elementos do vetor x nas posições 2 e 4
x[c(2, 4)]

# Seleciona os elementos do vetor x que não estão nas posições 2 e 4
x[-c(2, 4)]

# Seleciona os elementos do vetor x que forem iguais a 20
x[x==20]

# Seleciona o mínimo entre os elementos do vetor x
x[x==min(x)]

# Seleciona os elementos do vetor x maiores do que 20
x[x>20]

# Verifica quais elementos são maior que 20 (TRUE é porque o elemento satisfaz a condição ">20" e FALSE não satisfaz)
x>20

# Mostra o comprimento de um vetor (número de elementos do vetor)
length(x)

# Operações com vetores -------------------------------------------------------------------

# Criando dois vetores x e y
x <- c(1, 2, 3, 4, 5)
y <- c(3, 8, 4, 7, 2)

# Mostrando os vetores x e y
x; y

# Somando x e y
x+y

# Multiplicando x e y (multiplica cada elemento do vetor x pelo elemento da respectiva posição no vetor y)
x*y

# Dividindo x por y (divide cada elemento do vetor x pelo elemento da respectiva posição no vetor y)
x/y

# Somando o número 10 a todos os elementos do vetor x
10+x

# subtraindo o número 10 de todos os elementos do vetor x
x-10

# Multiplicando o vetor x por 10
10*x

# Dividindo o vetor x por 10
x/10


# Matrizes --------------------------------------------------------------------------------

# Matriz criada a partir do vetor que varia de 1 a 9. A matriz é composta pelo preenchimento sucessivo das colunas
matrix(1:9, nrow=3)

# A matriz é composta pelo preenchimento sucessivo das linhas
matrix(1:9, nrow=3, byrow=T)

# Matriz formada por dois vetores, organizada por linhas
x <- c(1, 2, 3)
y <- c(10, 20, 30)
rbind(x, y)

# Matriz formada por dois vetores, organizada por colunas
cbind(x, y)

# Criando o objeto X como uma matriz
X <- matrix(1:9, ncol=3)

# Mostrando a matriz X
X

# Acessando a primeira coluna da matriz X
X[,1]

# Acessando a segunda linha da matriz X
X[2,]

# Acessando o elemento X23
X[2,3]


# Operações com matrizes ------------------------------------------------------------------

# Criando a matriz X
X <- matrix(1:9, ncol=3); X

# Criando a matriz y
Y <- matrix(rep(1:3, 3), ncol=3); Y

# Transposta de X
Xt <- t(X); Xt

# Multiplicação de elemento por elemento
X*Y

# Multiplicação entre matrizes
X%*%Y


# Data-Frames -----------------------------------------------------------------------------

# Criando vetores de dados numéricos e de caracteres
nome <- c("Júlia", "João", "Isabela", "Gustavo")
idade <- c(20, 18, 22, 21)
peso <- c(50, 63, 60, 80)
sexo <- factor(c("F", "M", "F", "M"))

# Criando o data.frame
dados <- data.frame(nome, idade, peso, sexo)

# Mostrando o data.frame
dados

# Acessar a coluna idade do data.frame pelo nome da coluna
dados$idade

# Selecionar indivíduos com idade superior a 20 anos
dados1 <- dados[dados$idade>20,];dados1

# Selecionar indivíduos do sexo feminino
dados[dados$sexo=="F",]

# Selecionar indivíduos com peso diferente de 60
dados[dados$peso!=60,]

# Selecionar dados apenas de Júlia
dados[dados$nome=="Júlia",]
dados[1,] # outra forma

# Ordenar o data.frame, em ordem crescente, de acordo com a coluna idade
dados[order(dados$idade),]

# Ordenar o data.frame, em ordem decrescente, de acordo com a coluna idade
dados[rev(order(dados$idade)),]


# Listas ----------------------------------------------------------------------------------

# Gerando um objeto do tipo lista
lista1 <- list(Vetor = 1:10, Caracter = "Análise Exploratória de Dados",
               Matriz = matrix(1:16,4,4))

# Mostrando o objeto
lista1

# Acessando cada estrutura da lista individualmente
lista1$Vetor
lista1$Caracter
lista1$Matriz

# Outra forma de acessar cada estrutura
lista1[1]
lista1[2]
lista1[3]


# Importação de conjunto de dados para o R ------------------------------------------------

# Formato .txt
# Separador de colunas: tabulação
# Separador decimal: dec = "." (ponto)
# Primeira linha é cabeçalho: header = TRUE
dados1 <- read.table("C:/Users/Eduardo/Documents/MeusProjetos/Curso-de-Extensao-Estatistica-com-R/Dados/data1.txt", header=TRUE)
dados1

# Formato .txt
# Separador de colunas: sep = "," (vírgula)
# Separador decimal: dec = "." (ponto)
# Primeira linha é cabeçalho: header = TRUE
dados2 <- read.table("C:/Users/Eduardo/Documents/MeusProjetos/Curso-de-Extensao-Estatistica-com-R/Dados/data2.txt",sep=",", dec=".", h=T)
dados2

# Formato .csv
# Separador de colunas: sep = "," (vírgula)
# Separador decimal: dec = "." (ponto)
# Primeira linha é cabeçalho: header = TRUE
dados3 <- read.csv("C:/Users/Eduardo/Documents/MeusProjetos/Curso-de-Extensao-Estatistica-com-R/Dados/data3.csv", h=T)
dados3

# Formato .csv
# Separador de colunas: sep = ";" (ponto e vírgula)
# Separador decimal: dec = "," (vírgula)
# Primeira linha é cabeçalho: header = TRUE
dados4 <- read.csv2("C:/Users/Eduardo/Documents/MeusProjetos/Curso-de-Extensao-Estatistica-com-R/Dados/data4.csv", h=T)
dados4

# Formato .xlsx (Excel)

# Carregando o pacote "readxl" (tem que instalar este pacote antes)
library("readxl")

# Separador decimal: dec = "," (vírgula)
# Primeira linha é cabeçalho
dados5 <- read_xlsx("C:/Users/Eduardo/Documents/MeusProjetos/Curso-de-Extensao-Estatistica-com-R/Dados/data5.xlsx")
dados5

# Mudando o diretório atual do R
setwd("C:/Users/Eduardo/Documents/MeusProjetos/Curso-de-Extensao-Estatistica-com-R/Dados")

# Verificando o diretório atual do R
getwd()

# Verificando os arquivos no diretório atual do R
dir()

# Importando dados diretamente do diretório atual do R
# Nesse caso não precisa especificar o caminho do diretório
dados6 <- read.table("data1.txt", header = TRUE)
dados6
