
# Задание № 1

z <- c(-10, 10, 0.2)

# ---- Постройка графиков ----

plot(z ** 2, type = "l", col = "red", xlab = "z", ylab = "f(z)")
lines(z ** 3, type = "l", col = "blue")

# ---- Построение легенды графиков ----

legend(1, 20, 
       c("z ^ 2", "z ^ 3"),
       lwd = c(1, 1),
       col = c("red", "blue"),
       cex = 0.7)

# ---- Сохранение файла графика на компьютер ----

dev.copy(jpeg(), "graphics.jpeg")

plot(z ** 2, type = "l", col = "red", xlab = "z", ylab = "f(z)")
lines(z ** 3, type = "l", col = "blue")

legend(1, 20, 
       c("z ^ 2", "z ^ 3"),
       lwd = c(1, 1),
       col = c("red", "blue"),
       cex = 0.7)
dev.off()

getwd()

# --------------------

# Задание № 2

# colors() - показ в терминале всех имеющихся цветов для графиков

mycars <- mtcars

# ---- Построение гистограммы ----

hist(mycars$hp, xlab = "Мощность (лошадиные силы)", ylab = "Количество машин", col = "lightseagreen",
     border = "yellow")

# ---- Сортировка значений нужного нам вектора по возрастанию ----

sort_c <- sort(mycars$hp)

# ---- Вычисление и построение различными способами прорисовки линий среднего и медианного значений ----

abline(v = mean(mycars$hp), col = "red", lty = 4, lwd = 3)

abline(v = sort_c[length(sort_c) / 2], col = "black", lty = 3, lwd = 3)

# --------------------

# Задание № 3

dat <- read.csv("C:/Users/admin/Documents/2 курс_СЕМЫ/Семы по R/financials.csv")

# View(dat) - показ полной таблицы из csv файла

tab <- table(dat$Sector)

# ---- Построение столбчатой диаграммы ----

colors <- c(rep(c("red", "blue")), "red")
barplot(tab, main = "Sectors", ylab = "counts", las = 2, cex.names = 0.63, col = colors)

# ---- Построение круговой диаграммы ----
# ---- Расчёт частот в процентах и реализация таблицы

pers <- (tab / (sum(tab))) * 100
pers_r <- round(pers, 2)
pers_l <- paste0(pers_r, "%")

# ---- Получение вектора с названиями всех секторов ----

tab_sects <- names(tab)

# ---- Создание вектора необходимых для диаграммы цветов ----

cols_sects <- c("thistle1", "plum1", "palevioletred3", "maroon4", 
               "purple2", "paleturquoise",
               "cornflowerblue", "lightcyan3", "royalblue1",
               "seagreen2", "navy")

# ---- Построение диаграммы вместе с легендой ----

pie(tab, main = "S&P 500", col = cols_sects, labels = pers_l)

legend(x = -1.6, y = -0.8, tab_sects, cex = 0.7, fill = cols_sects, ncol = 3, bty = "n")

