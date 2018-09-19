# challenge 4

sum = 0

nums = [1, 5, 6, 8, 3]

nums.each do |n|
    sum = sum + n
end

average = (sum + 0.0) / nums.length
diff = 1000
closest = 0

nums.each do |n|
    if diff > (average - n).abs
        diff = (average - n).abs
        closest = n
    end
end

puts "The average is #{average}"
puts "The closest number is #{closest}"