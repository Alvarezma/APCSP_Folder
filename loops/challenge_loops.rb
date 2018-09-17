# # challenge 0

# x = 35
# while x < 470
#     puts x
#     x = x + 2
# end

# # challenge 1

# dogs =["chad", "coco", "bow", "clifford", "bolt", "sumo"]

# dogs.each do |n|
#     if n == "clifford"
#         puts "Your a bad boy #{n}"
#     else
#         puts "Your such a good boy #{n}"
#     end
# end

# # challenge 2

# num = [1, 5, 8, 2, 6]
# biggest = 0

# num.each do |n|
#     if biggest < n
#         biggest = n
#     end
# end

# puts biggest

# # challenge 3

# user_input = "0"
# count = 0
# num = []

# while user_input != ""
#     num[count] = user_input.to_i

#     puts "Insert number"
#     $stdout.flush
#     user_input = gets.chomp
#     count = count + 1
# end

# biggest = 0;

# num.each do |n|
#     if biggest < n
#         biggest = n
#     end
# end

# puts biggest

# # challenge 4

# sum = 0
# num_of_num = 0

# num = [1, 5, 6, 8, 3]

# num.each do |n|
#     sum = sum + n
#     num_of_num = num_of_num + 1
# end

# average = (sum + 0.0) / num_of_num
# diff = 1000
# closest = 0

# num.each do |n|
#     if diff > (average - n).abs
#         diff = (average - n).abs
#         closest = n
#     end
# end

# puts "The average is #{average}"
# puts "The closest number is #{closest}"

# challenge 5

words = ["hello", "bye", "why", "bellow", "chello", "jello"]
words.each do |n|
    first = n[0]
    rest = n[1, n.length]
    puts rest + first + "ay"
end
