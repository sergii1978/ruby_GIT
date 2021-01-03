books = { }
books["The deep end"]  = :abysmal
books["Living colors"] = :mediocre

puts books

puts books.length

puts books.keys

puts books["The deep end"]

# Посчитаем отзывы в hash ratings

ratings = Hash.new {0}

books.values.each { |rate|
  ratings[rate] += 1
}

puts ratings