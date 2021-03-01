=begin
написать функцию compare(), которая ведёт себя так же, как и spaceship-оператор:
compare(1, 1) # 0 числа равны
compare(2, 1) # 1 левое больше правого
compare(1, 2) # -1 левое меньше правого
=end
def compare(a, b)
    if a > b
      1
    elsif b > a
      -1
    else
      0
    end
  end