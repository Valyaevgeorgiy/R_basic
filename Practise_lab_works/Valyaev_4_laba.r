# Объявление функций

# Сейчас будут описаны все работы с пользовательскими функциями по ходу работы с файлом 4 лабораторной
# работы

#---- Функция возведения числа в степень ----

pow <- function(x, y){
  res <- x ^ y
  print(paste(x, "в степени", y, "равно", res), quote = FALSE)
}

#---- Функция проверки числа на положительность ----

nSignDefiner <- function(x){
  if (x > 0) {
    return("Число положительное")
  }
  
  else if (x < 0){
    return("Число отрицательное")
  }
  
  else {
    return("А вот число равно 0")
  }
}

#---- Функция сложения 3 чисел ----

sum3Numb <- function (x1 = 10, x2 = 20, x3 = 30) {
  return(x1 + x2 + x3)
}

#---- Функция печатания 6 строк ----

print6lines <- function(){
  print("Это первая строчка")
  print("Это вторая строчка")
  print("А я третья")
  print("Я уже четвёртая")
  print("Я пятая!")
  print("А я - шестая по счёту, последняя!")
}

#---- Функция возведения в степень с описанием ----

powOptions <- function(x=0, y=0, isDebug=FALSE){
  if (isDebug){
    return(print(paste0("pow_2: x=", x, ", y=", y, ", расчёт=", x ^ y), quote = FALSE))
  }
  else {
    return(res)
  }
}

#---- Самостоятельное задание № 1 ----

pow2 <- function (x, y, z) {
  if (typeof(x) != "double" | typeof(y) != "double" | typeof(z) != "double") {
    return(print("Параметры должны быть числом!"))
  }
  if (z == 0) {
    return(print("Нельзя делить на 0!"))
  }
  result <- (x ^ y) / z
  print(paste(x, "в степени", y, "делить на", z, "=", result))
}

#---- Самостоятельное задание № 2 ----

dayofWeek <- function (N, isDebug = FALSE) {
  if (N < 1) {
    return(print(" "))
  } else if (typeof(N) != "double") {
    return(print("День недели должен быть числом"))
  }
  N <- round(N,0)
  day <- switch(N, "Понедельник", "Вторник", "Среда",
                "Четверг", "Пятница", "Суббота", "Воскресенье")
  if (isDebug) {
    return(print(paste("Параметры: N =", N, "isDebug =", isDebug, "день недели", day)))
  } else {
    return(print(paste(day, "- это", N, "день недели")))
  }
}

#---- Самостоятельное задание № 3 (развитие 2 задание) ----

dayofWeekTranslate <- function (N, language="rus", isDebug=FALSE) {
  if (N < 1) {
    return(print(" "))
  } else if (typeof(N) != "double") {
    return(print("День недели должен быть числом"))
  }
  N <- round(N,0)
  if (language == "rus" | language == "ru" | language == "RU" | language == "рус" | language == "ру") {
    day <- switch(N, "Понедельник", "Вторник", "Среда",
                  "Четверг", "Пятница", "Суббота", "Воскресенье")
  } else if (language == "eng" | language == "Eng" |
             language == "English" | language == "english" | language == "англ" | language == "Англ") {
    day <- switch(N, "Monday", "Tuesday", "Wendesday", "Thursday", "Friday", "Saturday", "Sunday")
  }
  if (isDebug) {
    return(print(paste("Параметры: N =", N, "isDebug =", isDebug,
                       "язык =", language, "день недели", day)))
  } else {
    return(print(paste(day, "- это", N, "день недели")))
  }
}

#---- Самостоятельное адание № 4 (развитие 3 задания) ----

dayofWeekTranslateWithShort <- function (N, language="rus", short=FALSE, isDebug=FALSE) {
  if (N < 1) {
    return(print(" "))
  } else if (typeof(N) != "double") {
    return(print("День недели должен быть числом"))
  }
  N <- round(N,0)
  if (short == FALSE) {
    if (language == "rus" | language == "ru" | language == "RU" | language == "рус" | language == "ру") {
      day <- switch(N, "Понедельник", "Вторник", "Среда",
                    "Четверг", "Пятница", "Суббота", "Воскресенье")
    } else if (language == "eng" | language == "Eng" |
               language == "English" | language == "english" | language == "англ" | language == "Англ") {
      day <- switch(N, "Monday", "Tuesday", "Wendesday", "Thursday", "Friday", "Saturday", "Sunday")
    }
  } else if (short == TRUE) {
    if (language == "rus" | language == "ru" | language == "RU" | language == "рус" | language == "ру") {
      day <- switch(N, "ПН", "ВТ", "СР",
                    "ЧТ", "ПТ", "СБ", "ВС")
    } else if (language == "eng" | language == "Eng" |
               language == "English" | language == "english" | language == "англ" | language == "Англ") {
      day <- switch(N, "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN")
    }
  }
  
  if (isDebug) {
    return(print(paste("Параметры: N =", N, "isDebug =", isDebug,
                       "язык =", language, "сокращение =", short, "день недели", day)))
  } else {
    return(print(paste(day, "- это", N, "день недели")))
  }
}

#---- Самостоятельное задание № 5 (развитие 4 задания) ----

dayofWeekVector <- function (N, language="rus", short=FALSE, isDebug=FALSE) {
  if (short == FALSE) {
    if (language == "rus" | language == "ru" | language == "RU" | language == "рус" | language == "ру") {
      week_vector <- c("Понедельник", "Вторник", "Среда",
                       "Четверг", "Пятница", "Суббота", "Воскресенье")
      print(week_vector[N])
    } else if (language == "eng" | language == "Eng" |
               language == "English" | language == "english" | language == "англ" | language == "Англ") {
      week_vector <- c("Monday", "Tuesday", "Wendesday",
                       "Thursday", "Friday", "Saturday", "Sunday")
      print(week_vector[N])
    }
  } else if (short == TRUE) {
    if (language == "rus" | language == "ru" | language == "RU" | language == "рус" | language == "ру") {
      week_vector <- c("ПН", "ВТ", "СР",
                       "ЧТ", "ПТ", "СБ", "ВС")
      print(week_vector[N])
    } else if (language == "eng" | language == "Eng" |
               language == "English" | language == "english" | language == "англ" | language == "Англ") {
      week_vector <- c("MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN")
      print(week_vector[N])
    }
  }
  if (isDebug) {
    return(print(paste("Параметры: N =", N, "isDebug =", isDebug,
                       "язык =", language, "сокращение =", short, "день недели", week_vector)))
  } else {
    return(print(paste(week_vector, "- это", N, "день недели")))
  }
}

#---- Проверка функциональности всех выше описанных программ функций лабораторной работы ----

DEBUG_ON <- TRUE
DEBUG_OFF <- FALSE

z <- pow(3, 3)
print(summ_1 <- sum3Numb())


#---- Проверка самостоятельного задания № 1 ----
pow_2 <- pow2(55, 5, 20)
pow_2_2 <- pow2(55, 10, 0)
pow_2_3 <- pow2(10, 44, "char")

#---- Проверка самостоятельного задания № 2 ----
day_1 <- dayofWeek(1)
day_2 <- dayofWeek(5, DEBUG_ON)
day_3 <- dayofWeek(0)
day_4 <- dayofWeek("char")

#---- Проверка самостоятельного задания № 3 ----
day_t_1 <- dayofWeekTranslate(6)
day_t_2 <- dayofWeekTranslate(5, "eng")
day_t_3 <- dayofWeekTranslate(3, "Англ", DEBUG_ON)

#---- Проверка самостоятельного задания № 4 ----
day_s_1 <- dayofWeekTranslateWithShort(2, "англ")
day_s_2 <- dayofWeekTranslateWithShort(3, "рус", short=TRUE)
day_s_3 <- dayofWeekTranslateWithShort(4, "english", short=TRUE)

#---- Проверка самостоятельного задания № 5 ----
day_z_1 <- dayofWeekVector(c(1, 2, 3, 4, 1, 5, 6, 7), "eng")
day_z_2 <- dayofWeekVector(c(5, 4, 3, 2, 1, 5), "рус", short=TRUE, DEBUG_ON)
day_z_3 <- dayofWeekVector(c(5, 1, 7, 1), "Англ")



