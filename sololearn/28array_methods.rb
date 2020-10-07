arr = ["a", "b", "a", "b", "c"]
arr << "z"
arr.uniq!

print arr
puts ""
puts arr.size