def palindrome (word)
    backwards = ""
    word.split(//).each do |n|
        backwards = n + backwards
    end
    if backwards == word
        return true
    else
        return false
    end
end

puts palindrome("hello")
puts palindrome("racecar")
puts palindrome("hannah")