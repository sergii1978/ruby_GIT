# Дано натуральное число. Выведите его последнюю цифру.
a = gets.chomp.split('').map(&:to_i)
p a.last