user_name = ARGV.first
prompt = 'ANSWER ME!'

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts prompt
$stdout.flush
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
puts prompt
$stdout.flush
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
$stdout.flush
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
"""