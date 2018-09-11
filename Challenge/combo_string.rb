def combo_string(str, str2)
    if (str.length < str2.length)
        return str + str2 + str
    elsif (str.length > str2.length)
        return str2 + str + str2
    end
end

puts combo_string("Hello", "hi")

puts combo_string("hi", "Hello")

puts combo_string("aaa", "b")

puts combo_string("", "hi")

puts combo_string(" ", "hi")

puts combo_string("  ", "hi")