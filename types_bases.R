
# № 1. Объявляем переменные различных типов данных 

x1 <- 302
x2 <- FALSE
x3 <- 23.43
x4 <- 'hello, world!'
x5 <- -34L
x6 <- 2i - 1

# Анализируем и наблюдаем при помощи typeof(), какие типы данных получилось создать

print(paste0("x1: ", typeof(x1), "; x2: ", typeof(x2), "; x3: ", typeof(x3)))
print(paste0("x4: ", typeof(x4), "; x5: ", typeof(x5), "; x6: ", typeof(x6)))


# № 2. Проверка через typeof() типов следующих видов констант

print(paste0("29: ", typeof(29), "; 23i: ", typeof(23i),"; -34L: ", typeof(-34L)))

print(paste0("2/3: ", typeof(2/3), "; 4/2: ", typeof(4/2), "; 0xA: ", typeof(0xA)))

print(paste0("0XbL - 120L: ", typeof(0XbL - 120L), "; 0XbL - 120: ", typeof(0XbL - 120)))

print(paste0("0XbL * 17: ", typeof(0XbL * 17)))