print "Give me a number: "
$stdout.flush
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
$stdout.flush
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give some money and I will give back 10%: "
$stdout.flush
money = gets.chomp.to_f

change = money / 10

puts "Here is the change: #{change}"