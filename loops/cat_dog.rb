def cat_dog(word)
    dog = 0
    cat = 0
    word.length.times do |n|
        snip = word[n..n + 2]
        if (snip == "cat")
            cat += 1
        elsif (snip == "dog")
            dog += 1
        end
    end
    if cat == dog 
        return true
    else
        return false
    end
end

puts cat_dog("catdog")
puts cat_dog("catcat")
puts cat_dog("1cat1cadodog")
puts cat_dog("parrot")