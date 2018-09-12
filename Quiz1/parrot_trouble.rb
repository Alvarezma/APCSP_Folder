def parrot_trouble(is_talking, hour)
    if (is_talking && (hour < 7 || hour > 20))
        return true
    else
        return false
    end
end

puts parrot_trouble(true, 6)

puts parrot_trouble(false, 6)

puts parrot_trouble(true, 7)

puts parrot_trouble(true, 21)

puts parrot_trouble(false, 21)

puts parrot_trouble(true, 20)

puts parrot_trouble(true, 10)