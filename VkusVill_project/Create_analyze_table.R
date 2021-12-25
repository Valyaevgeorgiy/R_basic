#---- После процесса переименовывания начинаем считывание новых данных о поставках и продажах товаров ----


work_dir <- "C:/Users/admin/Documents/2_курс_СЕМЫ/Семы_по_R/Валяев_Георгий/Вкусвилл/Анализ"
setwd(work_dir)


# ---- Здесь прописываем функию считывания данных с файла продаж (поставки), а также установленных цен ----

read_file <- function(number = 0, expan, flag_pr = FALSE) {
  
  if (flag_pr == FALSE){
    final_tabl = read.table(paste0("Магазин_", number, "_Вкусвилл", expan),
                            header = TRUE, encoding = "UTF-8")
    
    return(final_tabl)
    
  } else {
    
    final_tabl = read.table(paste0("Цены", expan), header = TRUE, encoding = "UTF-8")
    
    return(final_tabl)
    
  }
}

price = read_file(0, ".txt", TRUE)

shop_in_1 = read_file(1, ".in")
shop_out_1 = read_file(1, ".out")

shop_in_2 = read_file(2, ".in")
shop_out_2 = read_file(2, ".out")

shop_in_3 = read_file(3, ".in")
shop_out_3 = read_file(3, ".out")

shop_in_4 = read_file(4, ".in")
shop_out_4 = read_file(4, ".out")

shop_in_5 = read_file(5, ".in")
shop_out_5 = read_file(5, ".out")

shop_in_6 = read_file(6, ".in")
shop_out_6 = read_file(6, ".out")

shop_in_7 = read_file(7, ".in")
shop_out_7 = read_file(7, ".out")

shop_in_8 = read_file(8, ".in")
shop_out_8 = read_file(8, ".out")

shop_in_9 = read_file(9, ".in")
shop_out_9 = read_file(9, ".out")

shop_in_10 = read_file(10, ".in")
shop_out_10 = read_file(10, ".out")

# ---- Начинаем построение аналитической итоговой таблицы о характеристиках продаж магазинов и дней продаж ----

reven_total = rep(0, 12)

profit = rep(0, length(reven_total))

res.tab = data.frame("Выручка, руб." = reven_total, "Прибыль, руб." = profit)

sale = rep(0, nrow(res.tab))

# ---- Задаём столбцам и строкам заголовки ----

res.tab$"Реализация, конт." = sale
res.tab$"Списание, руб."= sale

res.tab$"Равномерность продаж, конт." = sale
res.tab$"Продажи Макс, конт." = sale

res.tab$День_1  = (1:12)
res.tab$"Продажи Мин, конт." = sale
res.tab$День_2  = (1:12)
res.tab$"Списание Макс, конт." = sale
res.tab$День_3  = (1:12)

row.names(res.tab)[1] = 'Магазин 1'
row.names(res.tab)[2] = 'Магазин 2'
row.names(res.tab)[3] = 'Магазин 3'
row.names(res.tab)[4] = 'Магазин 4'
row.names(res.tab)[5] = 'Магазин 5'
row.names(res.tab)[6] = 'Магазин 6'
row.names(res.tab)[7] = 'Магазин 7'
row.names(res.tab)[8] = 'Магазин 8'
row.names(res.tab)[9] = 'Магазин 9'
row.names(res.tab)[10] = 'Магазин 10'
row.names(res.tab)[11] = 'Итого'
row.names(res.tab)[12] = 'Среднее'

# ---- Начинаем наш расчёт с выручки по магазинам ----

calc_reven <- function(file_out) {
  
  reven_fin = sum(file_out[, 2]) * price[1, 1] + sum(file_out[, 3]) * price[2, 1] +
    sum(file_out[, 4]) * price[3, 1] + sum(file_out[, 5]) * price[4, 1] +
    sum(file_out[, 6]) * price[5, 1] + sum(file_out[, 7]) * price[6, 1] +
    sum(file_out[, 8]) * price[7, 1]
  
  return(reven_fin)
}

res.tab[1, 1] = calc_reven(shop_out_1)
res.tab[2, 1] = calc_reven(shop_out_2)
res.tab[3, 1] = calc_reven(shop_out_3)
res.tab[4, 1] = calc_reven(shop_out_4)
res.tab[5, 1] = calc_reven(shop_out_5)
res.tab[6, 1] = calc_reven(shop_out_6)
res.tab[7, 1] = calc_reven(shop_out_7)
res.tab[8, 1] = calc_reven(shop_out_8)
res.tab[9, 1] = calc_reven(shop_out_9)
res.tab[10, 1] = calc_reven(shop_out_10)

# ---- Перейдём к вычислению списаний ----

calc_wr_dwns <- function(file_in, file_out){
  
  wr_dwns_fin = 0
  
  fin_1 = sum(file_in[, 2]) - sum(file_out[, 2]) * price[1, 2]
  fin_2 = sum(file_in[, 3]) - sum(file_out[, 3]) * price[2, 2]
  fin_3 = sum(file_in[, 4]) - sum(file_out[, 4]) * price[3, 2]
  fin_4 = sum(file_in[, 5]) - sum(file_out[, 5]) * price[4, 2]
  fin_5 = sum(file_in[, 6]) - sum(file_out[, 6]) * price[5, 2]
  fin_6 = sum(file_in[, 7]) - sum(file_out[, 7]) * price[6, 2]
  fin_7 = sum(file_in[, 8]) - sum(file_out[, 8]) * price[7, 2]
  
  wr_dwns_fin = sum(c(fin_1, fin_2, fin_3, fin_4, fin_5, fin_6, fin_7))
  
  return(wr_dwns_fin)
}

res.tab[1, 4] = calc_wr_dwns(shop_in_1, shop_out_1)
res.tab[2, 4] = calc_wr_dwns(shop_in_2, shop_out_2)
res.tab[3, 4] = calc_wr_dwns(shop_in_3, shop_out_3)
res.tab[4, 4] = calc_wr_dwns(shop_in_4, shop_out_4)
res.tab[5, 4] = calc_wr_dwns(shop_in_5, shop_out_5)
res.tab[6, 4] = calc_wr_dwns(shop_in_6, shop_out_6)
res.tab[7, 4] = calc_wr_dwns(shop_in_7, shop_out_7)
res.tab[8, 4] = calc_wr_dwns(shop_in_8, shop_out_8)
res.tab[9, 4] = calc_wr_dwns(shop_in_9, shop_out_9)
res.tab[10, 4] = calc_wr_dwns(shop_in_10, shop_out_10)

# ---- Считаем нашу чистую прибыль ----

calc_profit <- function(num_mag, file_in){
  
  profit_fin = res.tab[num_mag, 1] - (sum(file_in[, 2]) * price[1, 2] + sum(file_in[, 3]) * price[2, 2] +
                                        sum(file_in[, 4]) * price[3, 2] + sum(file_in[, 5]) * price[4, 2] +
                                        sum(file_in[, 6]) * price[5, 2] + sum(file_in[, 7]) * price[6, 2] +
                                        sum(file_in[, 8]) * price[7, 2])
  
  return(profit_fin)
}

res.tab[1, 2] = calc_profit(1, shop_in_1)
res.tab[2, 2] = calc_profit(2, shop_in_2)
res.tab[3, 2] = calc_profit(3, shop_in_3)
res.tab[4, 2] = calc_profit(4, shop_in_4)
res.tab[5, 2] = calc_profit(5, shop_in_5)
res.tab[6, 2] = calc_profit(6, shop_in_6)
res.tab[7, 2] = calc_profit(7, shop_in_7)
res.tab[8, 2] = calc_profit(8, shop_in_8)
res.tab[9, 2] = calc_profit(9, shop_in_9)
res.tab[10, 2] = calc_profit(10, shop_in_10)

# ---- Начнём расчёт реализации ----

calc_execut <- function(file_out){
  
  exec_fin = sum(sum(file_out[, 2]), sum(file_out[, 3]), sum(file_out[, 4]), sum(file_out[, 5]),
                 sum(file_out[, 6]), sum(file_out[, 7]), sum(file_out[, 8]))
  
  return(exec_fin)
}

res.tab[1, 3] = calc_execut(shop_out_1)
res.tab[2, 3] = calc_execut(shop_out_2)
res.tab[3, 3] = calc_execut(shop_out_3)
res.tab[4, 3] = calc_execut(shop_out_4)
res.tab[5, 3] = calc_execut(shop_out_5)
res.tab[6, 3] = calc_execut(shop_out_6)
res.tab[7, 3] = calc_execut(shop_out_7)
res.tab[8, 3] = calc_execut(shop_out_8)
res.tab[9, 3] = calc_execut(shop_out_9)
res.tab[10, 3] = calc_execut(shop_out_10)


# ---- Считаем максимальные продажи магазина на протяжении недели среди всех товаров ----

# -- В отдельной функции мы проанализируем, в какой день была достигнута максимальная продажа --

max_sale <- function(num_mag, file_out) {
  max_sale_fin <- 0
  
  for (i in 1:7){
    for (j in 2:8){
      if (file_out[i, j] == res.tab[num_mag, 6]) {
        max_sale_fin = file_out[i, 1]
      }
    }
  }
  
  return(max_sale_fin)
}


res.tab[1, 6] = max(shop_out_1)
res.tab[1, 7] = max_sale(1, shop_out_1)

res.tab[2, 6] = max(shop_out_2)
res.tab[2, 7] = max_sale(2, shop_out_2)

res.tab[3, 6] = max(shop_out_3)
res.tab[3, 7] = max_sale(3, shop_out_3)

res.tab[4, 6] = max(shop_out_4)
res.tab[4, 7] = max_sale(4, shop_out_4)

res.tab[5, 6] = max(shop_out_5)
res.tab[5, 7] = max_sale(5, shop_out_5)

res.tab[6, 6] = max(shop_out_6)
res.tab[6, 7] = max_sale(6, shop_out_6)

res.tab[7, 6] = max(shop_out_7)
res.tab[7, 7] = max_sale(7, shop_out_7)

res.tab[8, 6] = max(shop_out_8)
res.tab[8, 7] = max_sale(8, shop_out_8)

res.tab[9, 6] = max(shop_out_9)
res.tab[9, 7] = max_sale(9, shop_out_9)

res.tab[10, 6] = max(shop_out_10)
res.tab[10, 7] = max_sale(10, shop_out_10)


# ---- Считаем минимальные продажи магазина на протяжении недели среди всех товаров ----

# -- В отдельных функциях мы проанализируем минимальные продажи и в какой день они были --

min_min <- function(file_out) {
  fin_min <- min(file_out[, 2], file_out[, 3], file_out[, 4], file_out[, 5], file_out[, 6],
                 file_out[, 7], file_out[, 8])
  return(fin_min)
}

min_sale <- function(num_mag, file_out) {
  min_sale_fin <- 0
  
  for (i in 1:7){
    for (j in 2:8){
      if (file_out[i, j] == res.tab[num_mag, 8]){
        min_sale_fin = file_out[i, 1]
      }
    }
  }
  
  return(min_sale_fin)
}

res.tab[1, 8] = min_min(shop_out_1)
res.tab[1, 9] = min_sale(1, shop_out_1)

res.tab[2, 8] = min_min(shop_out_2)
res.tab[2, 9] = min_sale(2, shop_out_2)

res.tab[3, 8] = min_min(shop_out_3)
res.tab[3, 9] = min_sale(3, shop_out_3)

res.tab[4, 8] = min_min(shop_out_4)
res.tab[4, 9] = min_sale(4, shop_out_4)

res.tab[5, 8] = min_min(shop_out_5)
res.tab[5, 9] = min_sale(5, shop_out_5)

res.tab[6, 8] = min_min(shop_out_6)
res.tab[6, 9] = min_sale(6, shop_out_6)

res.tab[7, 8] = min_min(shop_out_7)
res.tab[7, 9] = min_sale(7, shop_out_7)

res.tab[8, 8] = min_min(shop_out_8)
res.tab[8, 9] = min_sale(8, shop_out_8)

res.tab[9, 8] = min_min(shop_out_9)
res.tab[9, 9] = min_sale(9, shop_out_9)

res.tab[10, 8] = min_min(shop_out_10)
res.tab[10, 9] = min_sale(10, shop_out_10)


# ---- Проводим расчёт максимального списания (и в какой день это произошло в магазине товаров) ----

max_max_r <- function(file_in, file_out) {
  fin_max_r <- max( (file_in[, 2] - file_out[, 2]), (file_in[, 3] - file_out[, 3]),
  (file_in[, 4] - file_out[, 4]), (file_in[, 5] - file_out[, 5]), (file_in[, 6] - file_out[, 6]), 
  (file_in[, 7] - file_out[, 7]), (file_in[, 8] - file_out[, 8]) )
  return(fin_max_r)
}

max_rec <- function(num_mag, fin_r_m, file_in, file_out) {
  max_rec_fin <- 0
  
  for (i in 1:7) {
    for (j in 2:8) {
      if ( (file_in[i, j] - file_out[i, j]) == fin_r_m ){
        max_rec_fin = file_out[i, 1]
      }
    }
  }
  
  return(max_rec_fin)
}


res.tab[1, 10] = max_max_r(shop_in_1, shop_out_1)
res.tab[1, 11] = max_rec(1, res.tab[1, 10], shop_in_1, shop_out_1)

res.tab[2, 10] = max_max_r(shop_in_2, shop_out_2)
res.tab[2, 11] = max_rec(2, res.tab[2, 10], shop_in_2, shop_out_2)

res.tab[3, 10] = max_max_r(shop_in_3, shop_out_3)
res.tab[3, 11] = max_rec(3, res.tab[3, 10], shop_in_3, shop_out_3)

res.tab[4, 10] = max_max_r(shop_in_4, shop_out_4)
res.tab[4, 11] = max_rec(4, res.tab[4, 10], shop_in_4, shop_out_4)

res.tab[5, 10] = max_max_r(shop_in_5, shop_out_5)
res.tab[5, 11] = max_rec(5, res.tab[5, 10], shop_in_5, shop_out_5)

res.tab[6, 10] = max_max_r(shop_in_6, shop_out_6)
res.tab[6, 11] = max_rec(6, res.tab[6, 10], shop_in_6, shop_out_6)

res.tab[7, 10] = max_max_r(shop_in_7, shop_out_7)
res.tab[7, 11] = max_rec(7, res.tab[7, 10], shop_in_7, shop_out_7)

res.tab[8, 10] = max_max_r(shop_in_8, shop_out_8)
res.tab[8, 11] = max_rec(8, res.tab[8, 10], shop_in_8, shop_out_8)

res.tab[9, 10] = max_max_r(shop_in_9, shop_out_9)
res.tab[9, 11] = max_rec(9, res.tab[9, 10], shop_in_9, shop_out_9)

res.tab[10, 10] = max_max_r(shop_in_10, shop_out_10)
res.tab[10, 11] = max_rec(10, res.tab[10, 10], shop_in_10, shop_out_10)


# ---- Расчёт равномерности продаж ----

uniformity_av <- function(file_out){
  av_fin <- round(sd(c(file_out[, 2], file_out[, 3], file_out[, 4], file_out[, 5], file_out[, 6],
                       file_out[, 7], file_out[, 8])))
  return(av_fin)
}

res.tab[1, 5] = uniformity_av(shop_out_1)
res.tab[2, 5] = uniformity_av(shop_out_2)
res.tab[3, 5] = uniformity_av(shop_out_3)
res.tab[4, 5] = uniformity_av(shop_out_4)
res.tab[5, 5] = uniformity_av(shop_out_5)
res.tab[6, 5] = uniformity_av(shop_out_6)
res.tab[7, 5] = uniformity_av(shop_out_7)
res.tab[8, 5] = uniformity_av(shop_out_8)
res.tab[9, 5] = uniformity_av(shop_out_9)
res.tab[10, 5] = uniformity_av(shop_out_10)

# ---- Перейдём к расчёту последних 2 строк - итого и среднее по столбцам

for (k in 1:5){
  res.tab[11, k] = sum(res.tab[, k])
  res.tab[12, k] = res.tab[11, k] / 10
}


# ---- Процесс записи итоговой таблицы в CSV-файл Excel ----

for (i in 11:12){
  for (j in 6:11){
    res.tab[i, j] = 0
  }
}

write.table(
  res.tab,
  file = paste0(work_dir, "/excel_table.csv"),
  col.names = TRUE,
  row.names = TRUE,
  sep = ",",
  dec = "."
)

# ---- Построение графиков по одному и нескольким показателям всех товаров по всем магазинам ----


# Прибыль по всем магазинам за неделю

vec_all = c(res.tab[1, 2], res.tab[2, 2], res.tab[3, 2], res.tab[4, 2], res.tab[5, 2], res.tab[6, 2],
         res.tab[7, 2], res.tab[8, 2], res.tab[9, 2], res.tab[10, 2]
)

# Максимальные продажи по всем магазинам

vec_all_2 = c(res.tab[1, 6], res.tab[2, 6], res.tab[3, 6], res.tab[4, 6], res.tab[5, 6], res.tab[6, 6],
              res.tab[7, 6], res.tab[8, 6], res.tab[9, 6], res.tab[10, 6]
)

# Минимальные продажи по всем магазинам

vec_all_3 = c(res.tab[1, 8], res.tab[2, 8], res.tab[3, 8], res.tab[4, 8], res.tab[5, 8], res.tab[6, 8],
              res.tab[7, 8], res.tab[8, 8], res.tab[9, 8], res.tab[10, 8]
)

# Максимальные списания по всем магазинам

vec_all_4 = c(res.tab[1, 10], res.tab[2, 10], res.tab[3, 10], res.tab[4, 10], res.tab[5, 10], res.tab[6, 10],
              res.tab[7, 10], res.tab[8, 10], res.tab[9, 10], res.tab[10, 10]
)



# Строим столбчатую диаграмму прибыли по всем магазинам за неделю

barplot(vec_all, main = "Динамика прибыли магазинов", xlab = 'Прибыль от товаров магазинов Вкусвилл',
        ylab = "Прибыль, руб.", col = "lightgreen")

# Строим график по одному показателю всех магазинов за неделю

plot(vec_all, col = "blue", main = "Динамика продаж магазинов", type = "b", lwd = 5,
     xlab = "Номер магазина", ylab = "Прибыль, руб.", cex = 1.5)


abline(v = seq(0, 10, 0.37), col = "lightblue")
abline(h = seq(0, 300000, 8000), col = "green")

# Строим график по нескольким показателям всех магазинов за неделю

plot(vec_all_2, col = "green", main = "Динамика мин/макс. продаж и списаний в магазинах", type = "b", lwd = 5,
     xlab = "Номер магазина", ylab = "Показатель в конт.", cex = 1.5, ylim = c(0, 780))
lines(x = vec_all_3,type="o", col="blue")
lines(x = vec_all_4,type="o", col="red")

abline(v = seq(0, 10, 0.37), col = "lightblue")
abline(h = seq(0, 800, 40), col = "green")
legend("center", legend=c("Макс продажи", "Мин продажи", "Макс списание"),
       col = c("green", "blue","red"), pch = c(1, 16))

