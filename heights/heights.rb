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
        sum += n.to_i
        num_of_heights += 1
    end

    return (sum + 0.0) / num_of_heights
end

puts find_average(data)

def find_standard_deviation(data)
    average = find_average(data)
    sum = 0
    data_length = 0
    
    data.each do |n|
        sum += (n.to_i - average) * (n.to_i - average)
        data_length += 1
    end
    
    return Math.sqrt(sum / data_length)
end

puts find_standard_deviation(data)

def find_mode(data)
    best_match = 0
    mode = ""
    data.each do |x|
        match = 0
        data.each do |y|
            if x == y
                match += 1
            end
        end
        if match > best_match
            mode = x
            best_match = match
        end
    end
    return mode
end

puts find_mode(data)