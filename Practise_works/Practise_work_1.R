
# Задание № 1

x1 <- (67 ^ 3 - 112 ** 2)
x2 <- log(125)
x3 <- log(81, base = 3)

print(paste0(x1, "  ;  ", x2, "  ;  ", x3), quote = FALSE)

# --------------------

# Задание № 2

flights_d <- c(140, 150, 100, 90, 230, 240, 165)
flights_a <- c(65, 145, 80, 87, 220, 268, 216)

y1 <- flights_d[3]
y2 <- flights_d[2] - flights_a[2]
y3 <- sum(flights_d)
y4 <- which(flights_a <= 220)

cat(y1, "  ;  ", y2, "  ;  ", y3, "  ;  ", y4)

# --------------------

# Задание № 3

pos <- c(4.765, 3.230, 1.256, 1.780, 2.583, 2.781, 3.945, 2.345)

z11 <- length(pos)
z12 <- max(pos)
z13 <- min(pos)

pos.round <- floor(pos)
pos_g <- pos * 1000

cat(z11, " , ", z12, " , ", z13, "  ;  ", pos.round, "  ;  ", pos_g)

# --------------------

# Задание № 4

milk <- c(89.5, 50.5, 31.5, 21.0, 22.1, 27.4)

summa <- sum(milk)
len <- length(milk)

aver <- (summa / len)

x_ch <- (milk - aver) ** 2
x_ch_s <- sum(x_ch)

s_2 <- x_ch_s / (len - 1)
s <- sqrt(s_2)

print(paste0("Выборочная дисперсия вектора milk равна: ", s), quote = FALSE)

# --------------------

# Задание № 5

?euro

e1 <- 100 / (euro["FIM"])
e2 <- 50 / (euro["BEF"])

e_m_point <- max(euro)
e_m_index <- which(euro == e_m_point)

e_index <- euro[e_m_index]

print(paste0(e1, "  ;  ", e2), quote = FALSE)
print(paste0("Индекс европейской валюты с самым большим весом 1 евро равен: ", e_m_index), quote = FALSE)

# --------------------

# Задание № 6

countries <- c("France", "France", "France", "France", "France", "Italy", "Italy", "Italy", "Italy",
                    "Italy", "Spain", "Spain", "Spain", "Spain", "Spain")

years <- c(2000, 2001, 2002, 2003, 2004, 2000, 2001, 2002, 2003, 2004, 2000, 2001, 2002,
             2003, 2004)

cat("Первый столбец таблицы со всеми странами: ", countries)
cat("Второй столбец таблицы со всеми годами: ", years)

# --------------------

