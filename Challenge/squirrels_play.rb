def squirrels_playing(temp, isSummer)
    if (temp >= 60 && temp <= 90)
        return true
    elsif (temp >= 60 && temp <= 100 && isSummer)
        return true
    else
        return false
    end
end

puts squirrels_playing(70, false)

puts squirrels_playing(95, false)

puts squirrels_playing(95, true)

puts squirrels_playing(50, false)

puts squirrels_playing(50, true)