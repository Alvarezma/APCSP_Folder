name = 'Michael Alvarez'
age = 17
height = 74 # inches
weight = 130 # lbs
eyes = 'Green'
teeth = 'White'
hair = 'Brown'
heightCm = 2.54 * height
weightKg = 0.453592 * weight

puts "Let's talk about #{name}."
puts "He's #{height} inches or #{heightCm} centimeters tall."
puts "He's #{weight} pounds or #{weightKg} kilograms heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."