def multiple_35(num)
    if (num % 3 == 0)
        mult_3 = true
    end
    if (num % 5 == 0)
        mult_5 = true
    end
    if (mult_5 && mult_3)
        return false
    elsif (mult_3)
        return true
    elsif (mult_5)
        return true
    else
        return false
    end
end

puts multiple_35(3)

puts multiple_35(15)

puts multiple_35(10)

puts multiple_35(0)

puts multiple_35(21)

puts multiple_35(25)

puts multiple_35(30)