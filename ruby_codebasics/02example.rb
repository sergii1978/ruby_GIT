=begin
Задание
    Напишите функцию sum_of_squares, которая принимает 3 аргумента и выводит на экран сумму их квадратов.
    Вычислите сумму квадратов для следующих чисел:
        3, 4, 5
        0, 2, 3
        -5, 10, 4
=end

#Решение учителя:
def sum_of_squares(first, second, third)
  puts first**2 + second**2 + third**2
end

sum_of_squares(3, 4, 5)
sum_of_squares(0, 2, 3)
sum_of_squares(-5, 10, 4)

#Ваше решение:
def sum_of_squares(a, b, c)
  puts a**3 + b**3 + c**3
end

sum_of_squares(3, 4, 5)
sum_of_squares(0, 2, 3)
sum_of_squares(-5, 10, 4)