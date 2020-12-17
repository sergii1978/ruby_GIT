#Оператор not(не) (!) реверсирует состояние одного операнда. 
#Результатом not true является false, а not false является true.

a = 7
puts !(a>5)
#false

a = 5
if !(a > 2)
  print("2")
elsif !(1 + 2 == a)
  print("3")
else
  print("4")
end
#3