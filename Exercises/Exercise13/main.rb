first, second, third, question = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "Riddle me this: #{question} -> "
$stdout.flush
answer = $stdin.gets.chomp
puts "Fair enough"