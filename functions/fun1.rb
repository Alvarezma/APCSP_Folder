
def add_numbers(a, b) # a and b are parameters
    sum = a + b
    return sum
end # scope

def say_hello_to(name)
    puts "Hello #{name}"
end

def fancy_math(a, b, c, x, y)
    return ((a * x * x) - (b * y * y)) / c
end

puts fancy_math(1, 2, 3, 4, 5)

a = 1
s = add_numbers(a + 4, 2) # a and 2 are arguments

puts s

print "what is your name? -> "
$stdout.flush
name = gets.chomp
say_hello_to(name)