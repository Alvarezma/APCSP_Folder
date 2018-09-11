def pig_latin( word )
    answer = ""

    if starts_with_a_vowel?( word )
        answer = pig_latin_vowel(word)
    elsif number_of_con(word) == 1
        answer = pig_latin_1con(word)
    elsif number_of_con(word) == 2
        answer = pig_latin_2con(word)
    elsif number_of_con(word) == 3
        answer = pig_latin_3con(word)
    end

    return answer
end

def pig_latin_1con( word )
    first = word[0]
    rest = word[1, word.length]
    return rest + first + "ay"
end

def pig_latin_2con( word )
    first = word[0..1]
    rest = word[2, word.length]
    return rest + first + "ay"
end

def pig_latin_3con( word )
    first = word[0..2]
    rest = word[3, word.length]
    return rest + first + "ay"
end

def pig_latin_vowel( word )
    return word + "way"
end

def number_of_con(word)
    first_letter = word[0]
    if !(starts_with_a_vowel?(first_letter))
        num = 1
    end
    second_letter = word[1]
    if !(starts_with_a_vowel?(second_letter))
        num = 2
    end
    third_letter = word[2]
    if !(starts_with_a_vowel?(third_letter)) && !(starts_with_a_vowel?(second_letter))
        num = 3
    end
    return num
end

def starts_with_a_vowel?(word)
    first_letter = word[0]
    return first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
end

puts pig_latin("single")
puts pig_latin("the")
puts pig_latin("three")
puts pig_latin("apple")
puts pig_latin("taylor")