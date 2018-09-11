def two_as_one(a, b, c)
    if (a + b == c || b + c == a || a + c == b)
        return true
    else 
        return false
    end
end

puts two_as_one(1, 2, 3)

puts two_as_one(3, 1, 2)

puts two_as_one(3, 2, 2)

puts two_as_one(4, 2, 3)

puts two_as_one(-4, 2, -2)