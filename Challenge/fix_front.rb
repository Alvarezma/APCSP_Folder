def fix_front(str)
    first = str[0]
    second = str[1]
    result = str[2, str.length]
    if (second == "b")
        result = second + result
    end
    if (first == "a")
        result = first + result
    end
    return result
end

puts fix_front("Hello")

puts fix_front("ruby")

puts fix_front("away")

puts fix_front("abby")

puts fix_front("apple")

puts fix_front("ebola")