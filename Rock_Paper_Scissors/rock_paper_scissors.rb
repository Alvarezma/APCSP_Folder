# # [Part 0]

# player_score = 0
# computer_score = 0

# while (player_score < 4 && computer_score < 4)
#     puts "Enter rock, paper, or scissors"
#     $stdout.flush
#     player = gets.chomp
#     computer = ["rock", "paper", "scissors"].sample
#     puts "Computer plays: #{computer}"
#     if ((player == "paper" && computer == "rock") || (player == "rock" && computer == "scissors") || (player == "scissors" && computer == "paper"))
#         puts "you get a point"
#         player_score += 1
#     elsif (player == computer)
#         puts "Tie"
#     else
#         puts "Computer gets a point"
#         computer_score += 1
#     end
#     puts "your score: #{player_score}"
#     puts "computer score: #{computer_score}"
# end

# if (player_score == 4) 
#     puts "you win!!!"
# else
#     puts "TRY AGAIN ;)"
# end

# # [Part 1]

# 4.times do |i|
#     puts "Enter rock, paper, or scissors"
#     $stdout.flush
#     player = gets.chomp

#     if (player == "rock")
#         computer = "paper"
#     elsif (player == "paper")
#         computer = "scissors"
#     else
#         computer = "rock"
#     end
#     puts "Computer plays: #{computer}"

#     puts "Computer gets a point"
    
#     puts "your score: 0"
#     puts "computer score: #{i + 1}"
# end

# puts "TRY AGAIN ;)"

# # [Part 2]

# player_score = 0
# computer_score = 0

# while (player_score < 4 && computer_score < 4)
#     puts "Enter rock, paper, or scissors"
#     $stdout.flush
#     player = gets.chomp
#     computer = rand(100)
#     if computer >= 0 && computer < 75
#         if (player == "rock")
#             computer = "paper"
#         elsif (player == "paper")
#             computer = "scissors"
#         else
#             computer = "rock"
#         end
#         puts "Computer plays: #{computer}"
#         computer_score += 1

#         puts "Computer gets a point"
#     else
#         if (player == "rock")
#             computer = "scissors"
#         elsif (player == "paper")
#             computer = "rock"
#         else
#             computer = "paper"
#         end
#         puts "Computer plays: #{computer}"
#         player_score += 1

#         puts "you get a point"
#     end
#     puts "your score: #{player_score}"
#     puts "computer score: #{computer_score}"
# end

# puts "TRY AGAIN ;)"

# # [Part 3]
# # [Try 1 strategy]
# player_score = 0
# computer_score = 0
# wind = false

# while (player_score < 4 && computer_score < 4)
#     puts "\nEnter rock, paper, or scissors"
#     $stdout.flush
#     player = gets.chomp
#     if (player_score == 0 && computer_score == 0)
#         computer = ["rock", "paper", "scissors"].sample
#     end
#     puts "\nComputer plays: #{computer}\n"
#     if ((player == "paper" && computer == "rock") || (player == "rock" && computer == "scissors") || (player == "scissors" && computer == "paper"))
#         puts "you get a point"
#         player_score += 1
#         win = false
#     elsif (player == computer)
#         puts "Tie"
#     else
#         puts "Computer gets a point"
#         computer_score += 1
#         win = true
#     end
#     if win
#         computer = player
#     else
#         if (computer == "scissors")
#             computer = "paper"
#         end
#         if (computer == "rock")
#             computer = "scissors"
#         end
#         if (computer == "paper")
#             computer = "rock"
#         end
#     end
#     puts "your score: #{player_score}"
#     puts "computer score: #{computer_score}"
# end

# if (player_score == 4) 
#     puts "you win!!!"
# else
#     puts "TRY AGAIN ;)"
# end

# [Try 2 probability]

player_score = 0
computer_score = 0
rock = 0
paper = 0
scissors = 0

while (player_score < 4 && computer_score < 4)
    puts "\nEnter rock, paper, or scissors"
    $stdout.flush
    player = gets.chomp
    if (player == "rock")
        rock += 1
    elsif (player == "paper")
        paper += 1
    elsif (player == "scissors")
        scissors += 1
    end
    if (player_score == 0 && computer_score == 0)
        computer = ["rock", "paper", "scissors"].sample
    end
    puts "\nComputer plays: #{computer}\n"
    if ((player == "paper" && computer == "rock") || (player == "rock" && computer == "scissors") || (player == "scissors" && computer == "paper"))
        puts "you get a point"
        player_score += 1
    elsif (player == computer)
        puts "Tie"
    else
        puts "Computer gets a point"
        computer_score += 1
    end
    puts "your score: #{player_score}"
    puts "computer score: #{computer_score}"
end

if (player_score == 4) 
    puts "you win!!!"
else
    puts "TRY AGAIN ;)"
end