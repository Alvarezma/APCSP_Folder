def answer_phone(is_morning, is_mom, is_asleep)
    if (is_asleep)
        return false
    elsif (is_morning && is_mom)
        return true
    elsif (is_morning)
        return false
    else
        return true
    end
end

puts answer_phone(false, false, false)

puts answer_phone(false, true, false)

puts answer_phone(false, false, true)

puts answer_phone(true, false, false)

puts answer_phone(true, true, false)