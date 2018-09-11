def uberant?(word)
    first_letter = word[0]
    last_letter = word[word.length - 1]
    
    return first_letter == last_letter
end

def super_uberant?(word)
    if (word.length % 2 == 0)
        return false
    end

    first_letter = word[0]
    mid_letter = word[word.length / 2]
    last_letter = word[word.length - 1]
    
    return first_letter == last_letter && first_letter == mid_letter
end

word = "hannah"
puts "Is #{word} uberant? #{uberant?(word)}"

word = "loss"
puts "Is #{word} uberant? #{uberant?(word)}"

word = "temperant"
puts "Is #{word} uberant? #{uberant?(word)}"

word = ""
puts "Is #{word} uberant? #{uberant?(word)}"

word = "a"
puts "Is #{word} uberant? #{uberant?(word)}"

word = "lalal"
puts "Is #{word} super uberant? #{super_uberant?(word)}"

word = "laal"
puts "Is #{word} super uberant? #{super_uberant?(word)}"

word = ""
puts "Is #{word} super uberant? #{super_uberant?(word)}"

word = "a"
puts "Is #{word} super uberant? #{super_uberant?(word)}"
