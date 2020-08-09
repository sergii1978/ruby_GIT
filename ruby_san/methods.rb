# Объявили метод и вывели строку на экран
def division_1
    puts 'method body'
end

# Объявили метод, который принимает аргумент и выводит его на экран
def division_2(name)
    puts 'My name is ' + name
end
division_1
division_2(name = 'Dasha')

# Содержит оба вышеперчисленных метода, объявили переменную, поместили в строку и передали в метод в division_2
def division_3
    name = 'Dasha'
    division_1
    division_2(name)
end

division_3

# Division_2 Принимает разные аргументы
def division_2(name, age, weight)
    puts 'My name is '   + name
    puts 'My age is '    + age.to_s
    puts 'My weight is ' + "#{weight}"
    puts (_________)
end

division_2( name 'Dasha', age 21, weight 55 )
division_2( name 'Pasha', age 33, weight 65 )
division_2( name 'Sasha', age 45, weight 75 )