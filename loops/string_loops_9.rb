def number_of_a (word, letter)
    count = 0
    word.split(//).each do |n|
        if (n == letter) 
            count = count + 1
        end
    end
    return count
end

puts number_of_a("apple", "p")
puts number_of_a("handared", "h")
puts number_of_a("hello", "l")