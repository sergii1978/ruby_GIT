puts "Привет! Как тебя зовут?"
name = gets.encode("UTF-8").chomp
puts "Привет, " + name + ", как дела?"
# выдаст крякозяблики
# решение проблемы для Windows

# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
  end
  # /XXX

puts "Привет! Как тебя зовут?"
name = gets.chomp
puts "Привет, " + name + ", как дела?"