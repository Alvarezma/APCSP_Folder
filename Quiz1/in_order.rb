def in_order(a, b, c, ignore_b)
    if (ignore_b && c > b)
        return true
    elsif (b > a && c > b)
        return true
    else
        return false
    end
end

puts in_order(1, 2, 4, false)

puts in_order(1, 1, 2, true)

puts in_order(1, 2, 1, false)

puts in_order(4, 1, 3, true)

puts in_order(1, 2, 3, false)

puts in_order(3, 2, 4, true)