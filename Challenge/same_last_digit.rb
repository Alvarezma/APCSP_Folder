def same_last_digit(a, b, c)
    last_digit_a = a % 10
    last_digit_b = b % 10
    last_digit_c = c % 10
    if (last_digit_a == last_digit_b || last_digit_a == last_digit_c || last_digit_b == last_digit_c)
        return true
    else
        return false
    end
end

puts same_last_digit(23, 19, 13)

puts same_last_digit(23, 19, 12)

puts same_last_digit(23, 19, 3)

puts same_last_digit(20, 19, 0)