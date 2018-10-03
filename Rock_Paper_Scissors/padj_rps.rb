require "./rps_helpers"

def play_rps

    comp_wins = 0
    player_wins = 0

    player_won = 0
    comp_won = 1
    tie = 2

    while !game_is_over?(comp_wins, player_wins)
        comp_choice = pick_computer_choice()
        player_choice = pick_player_choice()

        game_result = determine_winner(comp_choice, player_choice)
        if game_result == player_won
            player_wins += 1
        elsif game_result == comp_won
            comp_wins += 1
        end
    end

    if (player_wins >= 4)
        puts "Player wins the tournament"
    else
        puts "Computer wins the tournament"
    end

end

play_rps