def upgrade_pig_latin(word)
    found = false
    place = 0
    while !(found)
        if (word[place] == "a" || word[place] == "e" || word[place] == "i" || word[place] == "o" || word[place] == "u")
            found = true
            place -= 1
        end
        place += 1
    end
    first = word[0, place]
    rest = word[place, word.length]
    return rest + first + "ay"
end

puts upgrade_pig_latin("Hi")
puts upgrade_pig_latin("Rarw")
puts upgrade_pig_latin("Three")
puts upgrade_pig_latin("sand")
puts upgrade_pig_latin("tree")
puts upgrade_pig_latin("Mcgruff")