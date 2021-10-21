# Operações matemáticas básicas no R -------------------------------------------------------

# Adição
5+3

# Subtração
5-3

# Multiplicação
5*3

# Divisão
5/3

# Potenciação
5^3

# Raiz quadrada
sqrt(100)

# Exponencial
exp(0)
exp(1)

# Logarítmo na base e
log(1)
log(2)

# Logarítmo na base 10
log10(1)
log10(2)


# Armazenamento de dados -------------------------------------------------------------------

# Entrando com um dado numérico (criando o objeto x)
x <- 10

# Mostrando o objeto x
x

# Entrando com um dado de caracteres (criando o objeto y)
# e mostrando o objeto (comandos na mesma linha separados por ";")
y <- "bola" ; y


# Operadores lógicos -----------------------------------------------------------------------

# Criando objetos x e y
x <- c(1,3,2,4,5,3,2,4); x
y <- c(1,2,3,4,5,6,7,8); y

# Operador "igual a"
x==3

# Operador "diferente de"
x!=3

# Operador "maior que"
x>3

# Operador "maior ou igual a"
x>=3

# Operador "OU"
if(x[2] | y[2] > 2) print("sim") else print("não")

# Operador "E"
if(x[2] & y[2] > 2) print("sim") else print("não")