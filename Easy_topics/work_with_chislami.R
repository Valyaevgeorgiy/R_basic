
# 1 ��������� - ���� ������ � ���������� � �� ���������� � ������� 
{
  f_num <- as.integer(readline("������� ������ ����� �����: "))
  s_num <- as.integer(readline("������� ������ ����� �����: "))

  
  x <- (f_num) ^ (s_num)
  print(paste0("������ ������������� ���������: ", f_num, ", ", s_num, ", ", x))
        
  y <- (s_num) ^ (f_num)
  print(paste0("������ ������������� ���������: ", f_num, ", ", s_num, ", ", y))
  
  z <- (f_num) / (s_num)
  print(paste0("������ ������������� ���������: ", f_num, ", ", s_num, ", ", z))
  
  w <- z / 0
  print(paste0("�������� ������������� ���������: ", f_num, ", ", s_num, ", ", w))
  
}