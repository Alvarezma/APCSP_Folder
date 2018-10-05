def random_number_create() 
    return 1 + rand(1000)
end

def valid_guess?(guess)
    return guess > 0 && guess <= 1000
end

def pick_player_guess()
    puts "\nGuess a number between 1 and 1000"
    $stdout.flush
    guess = gets.chomp.to_i

    while !valid_guess?(guess)
        puts "\nGuess a number between 1 and 1000"
        puts "Please insert a valid input"
        $stdout.flush
        guess = gets.chomp.to_i
    end

    return guess
end

def is_guess_correct?(guess, target)
    return guess == target
end

def new_round?(total_guesses)
    return total_guesses % 7 == 0
end

def play_game()
    guess_is_correct = false
    total_guesses = 0

    while !(guess_is_correct)
        if new_round?(total_guesses)
            target = random_number_create()
            puts "\nNew Randomization"
        end

        guess = pick_player_guess

        if is_guess_correct?(guess, target)
            guess_is_correct = true
        elsif guess > target
            puts "\nToo high"
        else 
            puts "\nToo low"
        end

        total_guesses += 1
    end

    puts "Congratulations"
    puts "Rounds: #{(total_guesses / 7) + 1}"
    puts "Guesses: #{total_guesses}"

end

play_game()