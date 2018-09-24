def number_of_palindrome (paragraph)
    count = 0
    paragraph.split(' ').each do |n|
        backwards = ""
        n.split(//).each do |n|
            backwards = n + backwards
        end
        if (n[n.length - 1] == "." || n[n.length - 1] == "," || n[n.length - 1] == "?" || n[n.length - 1] == ";" || n[n.length - 1] == ":")
            if n[0, n.length - 1] == backwards[1, backwards.length]
                count = count + 1
            end
        else
            if backwards == n
                count = count + 1
            end
        end
    end
    return count
end

puts number_of_palindrome("hello hannah racecar")
puts number_of_palindrome("hello, hannah, and racecar.")