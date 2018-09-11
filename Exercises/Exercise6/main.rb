types_of_people = 10 #variable
x = "There are #{types_of_people} types of people." #variable saving a string
binary = "binary" # Two more variables saving strings
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}." #variable using previosly initiated variables within it saved as a string

puts x #using variable strings to output
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "isn't that joke so funny?! #{hilarious}"
# same process as first
puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."
#Combining two strings into one
puts w + e