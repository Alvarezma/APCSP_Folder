def xy_balance(word)
    balance = true
    word.length.times do |n|
        if (word[n] == "x")
            balance = false
        end
        if (word[n] == "y")
            balance = true
        end
    end
    return balance
end

puts xy_balance("aaxbby")
puts xy_balance("aaxbb")
puts xy_balance("yaxbb")
puts xy_balance("xxy")
puts xy_balance("xyx")
puts xy_balance("Y")