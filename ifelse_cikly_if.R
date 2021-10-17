x <- sample(x = 20:-1, size = 15, replace = TRUE)
x

?ifelse

z1 <- ifelse(x %% 2 == 0, "Чётное", -4:1)
z1

z2 <- ifelse(x %% 2 == 0, TRUE, sample(-3:2, size = 1))
z2

y <- sample(c(3, 5, 7, 0, 2, 9), size = 7, replace = TRUE)
y

z3 <- ifelse(y %% 2 == 0, 1:7, 101:107)
z3

z4 <- ifelse(x %% 2 == 0, 1:3, 20:30)
z4


if (x > 0) {
  print('У нас что-то положительное')
} else if (x == 0) {
  print('У нас что-то равно нулю')
} else {
  print('Оно меньше, чем ноль')
}
x

