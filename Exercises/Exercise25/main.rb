module Main

    # This function will break up words for us.
    def Main.break_words(stuff)
        words = stuff.split(' ')
        return words
    end

    # Sorts the words.
    def Main.sort_words(words)
        return words.sort
    end

    # Prints the first word after shifting it off.
    def Main.print_first_word(words)
        word = words.shift
        puts word
    end

    # Prints the last word after popping it off.
    def Main.print_last_word(words)
        word = words.pop
        puts word
    end

    # Takes in a full sentence and returns the sorted words.
    def Main.sort_sentence(sentence)
        words = Main.break_words(sentence)
        return Main.sort_words(words)
    end

    # Prints the first and last words of the sentence.
    def Main.print_first_and_last(sentence)
        words = Main.break_words(sentence)
        Main.print_first_word(words)
        Main.print_last_word(words)
    end

    # Sorts the words then prints the first and last one.
    def Main.print_first_and_last_sorted(sentence)
        words = Main.sort_sentence(sentence)
        Main.print_first_word(words)
        Main.print_last_word(words)
    end

end