def comb_length( str1, str2, str3 )
    return str1.length + str2.length + str3.length
end

puts comb_length("a", "b", "c")
puts comb_length("at", "b", "c")
puts comb_length("apple", "bear", "cat")

#word = "Baseball" Slicing
#0 1 2 3 4 5 6 7
#B a s e b a l l

#word[4, 7] = 'ball'


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


puts pig_latin_1con("hello")
puts pig_latin_2con("the")
puts pig_latin_3con("three")