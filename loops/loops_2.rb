# challenge 2

num = [1, 5, 8, 2, 6]
biggest = 0

num.each do |n|
    if biggest < n
        biggest = n
    end
end

puts biggest