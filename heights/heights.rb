data = open("./heights.csv").read.split(',')

def find_biggest(data)
    biggest = 0
    data.each do |n|
        if biggest < n.to_i
            biggest = n.to_i
        end
    end
    return biggest
end

puts find_biggest(data)

def find_average(data)
    sum = 0
    num_of_heights = 0

    data.each do |n|
        sum = sum + n.to_i
        num_of_heights = num_of_heights + 1
    end

    return (sum + 0.0) / num_of_heights
end

puts find_average(data)

def find_standard_deviation(data)
    average = find_average(data)
    sqrd_diff = Array.new
    
    data.each do |n|
        sqrd_diff += [(n.to_i - average) * (n.to_i - average)]
    end
    
    return Math.sqrt(find_average(sqrd_diff))
end

puts find_standard_deviation(data)