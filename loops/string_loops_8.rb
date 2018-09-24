def number_of_a (word)
    count = 0
    word.split(//).each do |n|
        if (n == "a") 
            count = count + 1
        end
    end
    return count
end

puts number_of_a("apple")
puts number_of_a("handared")
puts number_of_a("hello")