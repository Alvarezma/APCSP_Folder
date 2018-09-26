# def palindrome (word)
#     backwards = ""
#     word.split(//).each do |n|
#         backwards = n + backwards
#     end
#     if backwards == word
#         return true
#     else
#         return false
#     end
# end

def palindrome (word)
    word.length.times do |n|
        if (word[n] != word[word.length - n - 1]) 
            return false
        end
    end
    return true
end

puts palindrome("hello")
puts palindrome("racecar")
puts palindrome("hannah")