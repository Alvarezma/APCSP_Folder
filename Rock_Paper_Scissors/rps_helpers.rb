def game_is_over?(comp_wins, player_wins)
    return comp_wins >= 4 || player_wins >= 4
end

def pick_computer_choice()
    rock = 0
    paper = 1
    scissors = 2

    return [rock, paper, scissors].sample
end

def valid_choice?(choice)
    return choice == "r" || choice == "p" || choice == "s"
end

def pick_player_choice()
    rock = 0
    paper = 1
    scissors = 2

    puts "Type r, p, or s"
    $stdout.flush
    choice = gets.chomp

    while (!valid_choice?(choice))
        puts "Type r, p, or s"
        $stdout.flush
        choice = gets.chomp
    end

    if choice == "r"
        return rock
    elsif choice == "p"
        return paper
    else
        return scissors
    end
end

# 0 -> Player won
# 1 -> Computer won
# 2 -> tie
def determine_winner(comp_choice, player_choice)
    rock = 0
    paper = 1
    scissors = 2

    player_won = 0
    comp_won = 1
    tie = 2

    if comp_choice == rock
        if player_choice = rock
            return tie
        elsif player_choice = paper
            return player_won
        else
            return comp_won
        end
    elsif comp_choice == paper
        if player_choice = rock
            return comp_won
        elsif player_choice = paper
            return tie
        else
            return player_won
        end
    else 
        if player_choice = rock
            return player_won
        elsif player_choice = paper
            return comp_won
        else
            return tie
        end
    end
end