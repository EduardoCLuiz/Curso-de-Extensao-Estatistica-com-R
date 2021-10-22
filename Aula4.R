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

# Distribuição de frequencia (Criterio da apostila)
hist(dados, plot=F, breaks=c(4,7.5,11,14.5,18,21.5,25), right=F)

# Distribuição de frequencia (Criterio do R)
hist(dados, plot=F, right=F)
