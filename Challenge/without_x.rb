def without_x(word)
    first_letter = word[0]
    second_letter = word[1]
    rest_word = word[2, word.length]
    
    if (first_letter == "x" && second_letter == "x")
        return rest_word
    elsif (first_letter == "x")
        return second_letter + rest_word
    elsif (second_letter == "x")
        return first_letter + rest_word
    else
        return word
    end
end

puts without_x("xHi")
puts without_x("Hxi")
puts without_x("Hi")
puts without_x("xh")
puts without_x("a")
puts without_x("xh")
puts without_x("ax")