#Дано трехзначное число. Найдите сумму его цифр.
a = gets.chomp.split('').map(&:to_i).sum
p a
