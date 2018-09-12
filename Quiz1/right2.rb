def right2(word)
    last_2 = word[word.length - 2, word.length]
    rest_of_word = word[0, word.length - 2]
    return last_2 + rest_of_word
end

puts right2("Hello")

puts right2("Hi")

puts right2("ruby")

puts right2("Heo")

puts right2("bye")

puts right2("  ")