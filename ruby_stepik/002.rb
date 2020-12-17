# put your ruby code here
a = gets.to_i.abs
case a
when 0...10000
puts ("The next number for the number " + a.to_s + " is " + (a + 1).to_s + ".")
puts ("The previous number for the number " + a.to_s + " is " + (a - 1).to_s + ".")
end