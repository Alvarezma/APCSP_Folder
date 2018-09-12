# anonymous function
# no name

# Iteration
# interate = i

# y = mx + b
#    m = change == 1
#    b = start == 0
#    n = stop == 3

x = 5
3.times do |i|
    puts "Hi! #{x}"
    x = x + 2
end

# infinite loop
# increment means to add 1 to an int
# decrement means to subtract 1 from an int

# off by one ==> oboy

z = 0
while z < 10
    puts "z is smaller than 10"
    z = z + 1
end

user_input = ""

while user_input != "q"
    puts "type 1 to make a deposit"
    puts "type 2 to make a withdrawl"
    puts "type q to quit"

    user_input = gets.chomp
end

nums = [1, 2, 3, 4, 10, 12, 2]
sum = 0
nums.each do |n|
    sum = sum + n
end

puts sum