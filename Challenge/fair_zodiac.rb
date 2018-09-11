print "What is your weight: "
$stdout.flush
weight = gets.chomp.to_i

if (weight >= 220 && weight <= 280)
    puts "You can compete"
else 
    puts "You cannot compete"
end

print "Enter birth year: "
$stdout.flush
year = gets.chomp.to_i

rem = year % 12

if (rem == 0)
    sign = "Monkey"
elsif (rem == 1)
    sign = "Rooster"
elsif (rem == 2)
    sign = "Dog"
elsif (rem == 3)
    sign = "Pig"
elsif (rem == 4)
    sign = "Rat"
elsif (rem == 5)
    sign = "Ox"
elsif (rem == 6)
    sign = "Tiger"
elsif (rem == 7)
    sign = "Rabit"
elsif (rem == 8)
    sign = "Dragon"
elsif (rem == 9)
    sign = "Snake"
elsif (rem == 10)
    sign = "Horse"
elsif (rem == 11)
    sign = "Goat"
end

puts "Your zodiac sign is: #{sign}"