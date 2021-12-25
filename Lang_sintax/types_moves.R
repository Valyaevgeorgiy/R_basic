# преобразование типов

{
  n <- readline("Введите любое целое число: ")
  n <- as.integer(n)
  print(n * 10)
}

{
  n <- as.integer(readline("Ещё разок введите целое число: "))
  print(n * 10)
}

# делаем всё в одну строку

print(as.integer(readline("Последний раз попробуй: ")) * 10)

# встроенные в R константы
pi 
pi <- 90
pi
rm(pi)

# явное преобразование типов в языке

s <- 89
print(typeof(s)) # узнать тип данных в переменной

print(is.numeric(s)) # проверить, является ли переменная общим типом numeric

print(is.double(s))

print(is.complex(s))

print(is.infinite(s))

print(is.integer(s))

x <- 'hello, world!'
print(typeof(x))
print(as.integer(x))

# условные операторы и неявное преобразование типов

a <- 29
b <- '29'
c <- a == b
c

# Разберёмся со значением сравнения переменных, почему получилось TRUE

x <- 28
y <- '30 - 2'
n <- x < y
n


x <- 28
y <- '20 + 10'
n <- x < y
n

# результат TRUE, потому что значение 28 у "х" и '30 - 2' у "у", так как
# это - результат сравнения двоичных ASCII-кодов  

a <- 45
b <- FALSE
c <- 'a'






