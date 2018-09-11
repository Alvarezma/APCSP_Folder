def min_cat(str1, str2)
    if (str1.length >= str2.length)
        return str1[(str1.length - str2.length), str1.length] + str2
    elsif (str1.length < str2.length)
        return str1 + str2[(str2.length - str1.length), str2.length]
    end
end

puts min_cat("Hello", "Hi")
puts min_cat("Hello", "java")
puts min_cat("java", "Hello")
puts min_cat("", "Hello")
puts min_cat(" ", "Hello")
puts min_cat("A", "Hello")
puts min_cat("He", "Hi")