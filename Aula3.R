# Distribuição de frequencias para dados qualitativos --------------------------------------

# Entrando com os dados no R:
dados <- c("Fundamental","Médio","Médio","Superior","Médio","Médio",
           "Médio","Médio","Fundamental","Fundamental","Superior","Fundamental",
           "Superior","Fundamental","Médio","Médio","Médio","Médio",
           "Fundamental","Médio","Superior","Fundamental","Superior","Médio",
           "Médio","Fundamental","Médio","Médio","Médio","Fundamental",
           "Fundamental","Fundamental","Superior","Fundamental","Médio","Médio")
# Mostrando os dados armazenados (OPCIONAL)
dados

# Gerando a distribuiÃ§Ã£o de frequÃªncias
tab <- table(dados)

# Mostrando a distribuiÃ§Ã£o de frequÃªncias
tab

# Gerando e mostrando as proporções
tabprop <- prop.table(tab) ; tabprop

# Criando um vetor convertido em fator com níveis não ordenados
cs <- factor(c("media", "baixa", "media", "alta", "baixa", "baixa", "alta", 
               "media", "alta", "media"))

# Gerando uma distribuição de frequências sem ordenar os níveis desse fator
table(cs)

# Ordenando os níveis do fator cs (classe social)
cs <- factor(cs, ord=T, levels=c("baixa", "media", "alta"))

# Gerando uma distribuição de frequencias com os níveis do fator ordenados
table(cs)


# Tabela para dados quantitativos discretos ------------------------------------------------

# Entrando com os dados no R
dados <- c(1,3,1,1,0,1,0,1,1,0,2,2,0,0,0,1,2,1,2,0,0,1,6,4,3,3,1,2,4,0)

# Mostrando os dados armazenados
dados

# Tabela de distribuiÃ§Ã£o de frequÃªncias
tab <- table(dados)

# Mostrando a tabela de distribuiÃ§Ã£o de frequÃªncias
tab


# Tabela para dados quantitativos continuos ------------------------------------------------

# Entrando com os dados no R
dados <- c(5.73, 13.60, 13.23, 8.46, 17.26, 16.22, 8.74, 23.30, 7.39,
           11.06, 13.85, 8.12, 15.99, 10.76, 6.26, 9.80, 5.25, 9.77,
           19.40, 10.53, 11.59, 14.69, 8.95, 9.35, 4.56, 4.00, 9.13,
           14.71, 12.00, 7.59, 7.44, 6.66, 12.79, 18.75, 6.86, 16.61)

# Mostrando os dados armazenados (OPCIONAL)
dados

# Organizando os dados em ordem crescente (OPCIONAL)
sort(dados)

# Distribuição de frequencias (criterio do pesquisador)
hist(dados, plot=F, breaks=c(4,8,12,16,20,24), right=F)

# Distribuição de frequencias (criterio da apostila)
hist(dados, plot=F, breaks=c(4,7.5,11,14.5,18,21.5,25), right=F)

# Distribuição de frequencias (criterio do R)
hist(dados, plot=F, right=F)

