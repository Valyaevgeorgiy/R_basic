
# иногда R будет выдавать ошибки о соответствиях по версиям и о отсутствии необходимых пакетов 
# по общей иерархии пакетов

install.packages('RPMG', dep=TRUE)

library(RPMG)

plot(c(0, 100), c(1, 10))

rowBUTTONS(c('СОхранить', 'Отмена'))

