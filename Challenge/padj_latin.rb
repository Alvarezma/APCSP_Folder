def padj_latin(word)

    answer = ""
    if starts_with_a_vowel(word)
        answer = padj_vowel(word)
    else
        answer = padj_cons(word)
    end

    return answer
end

def starts_with_a_vowel?(word)
    first_letter = word[0]
    return first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
end

def padj_cons( word )
    first = word[0..1]
    last = word[2, word.length-1]
    return first + "padj" + last
end

def padj_vowel( word )
    first = word[0]
    last = word[1, word.length-1]
    return "padj" + first + "padj" + last
end

puts padj_cons("hello")

puts padj_vowel("apple")