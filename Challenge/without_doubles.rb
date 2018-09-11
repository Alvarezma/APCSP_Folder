def without_doubles(die1, die2, no_double)
    if (no_double && die1 == die2 && die1 == 6)
        die1 = 1
    elsif (no_double && die1 == die2)
        die1 = die1 + 1
    end
    
    return die1 + die2
end

puts without_doubles(2, 3, true)

puts without_doubles(3, 3, true)

puts without_doubles(3, 3, false)

puts without_doubles(6, 6, true)

puts without_doubles(6, 6, false)