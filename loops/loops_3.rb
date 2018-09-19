# challenge 3

user_input = "0"
count = 0
num = []

while user_input != ""
    num[count] = user_input.to_i

    puts "Insert number"
    $stdout.flush
    user_input = gets.chomp
    count = count + 1
end

biggest = 0;

num.each do |n|
    if biggest < n
        biggest = n
    end
end

puts biggest