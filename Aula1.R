# Opera��es matem�ticas b�sicas no R -------------------------------------------------------

# Adi��o
5+3

# Subtra��o
5-3

# Multiplica��o
5*3

# Divis�o
5/3

# Potencia��o
5^3

# Raiz quadrada
sqrt(100)

# Exponencial
exp(0)
exp(1)

# Logar�tmo na base e
log(1)
log(2)

# Logar�tmo na base 10
log10(1)
log10(2)


# Armazenamento de dados -------------------------------------------------------------------

# Entrando com um dado num�rico (criando o objeto x)
x <- 10

# Mostrando o objeto x
x

# Entrando com um dado de caracteres (criando o objeto y)
# e mostrando o objeto (comandos na mesma linha separados por ";")
y <- "bola" ; y


# Operadores l�gicos -----------------------------------------------------------------------

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
if(x[2] | y[2] > 2) print("sim") else print("n�o")

# Operador "E"
if(x[2] & y[2] > 2) print("sim") else print("n�o")