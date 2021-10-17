{
  a=as.integer(readline())
  b=as.double(readline())
  cat(a*b)
  cat(a/b)
  cat(a+b)
  cat(a-b)
  cat(a^b)
  cat(a%%b)
  cat(a%/%b)
}

{
  a=as.integer(readline())
  b=as.logical(readline())
  cat(a*b)
  cat(a/b)
  cat(a+b)
  cat(a-b)
  cat(a^b)
  cat(a%%b)
  cat(a%/%b)
}

{
  a=as.logical(readline())
  b=as.character(readline())
  cat(a*b)
  cat(a/b)
  cat(a+b)
  cat(a-b)
  cat(a^b)
  cat(a%%b)
  cat(a%/%b)
}

{
  a=as.double(readline())
  b=as.logical(readline())
  cat(a*b)
  cat(a/b)
  cat(a+b)
  cat(a-b)
  cat(a^b)
  cat(a%%b)
  cat(a%/%b)
}

{
  a=as.double(readline())
  b=as.character(readline())
  cat(a*b)
  cat(a/b)
  cat(a+b)
  cat(a-b)
  cat(a^b)
  cat(a%%b)
  cat(a%/%b)
}


# Иногда выводит NA - логическая константa, которая содержит индикатор пропущенного значения. 

# Не у любой переменной мы можем поменять тип. Например, строку “abc” превратить в число не получится.
# Тип переменной можно менять. Например, превратим строку “2” в число 2.
# Логические переменные легко превращаются в числовые: as.integer(FALSE) --> 0
  
# cat() - выводит сообщение на экран сразу без кавычек.

# Отличия от print()

# 1)cat() умеет “склеивать” то, что мы подаем ему на вход
# 2)cat() умеет работать только с одномерными объектами, а print() может вывести на экран что угодно.
# 3)cat() просто выводит объект на экран, не сохраняя информацию о нем, а print() сохраняет тип объекта.