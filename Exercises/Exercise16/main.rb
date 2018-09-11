filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdout.flush
$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file.  Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
$stdout.flush
line1 = $stdin.gets.chomp
print "line 2: "
$stdout.flush
line2 = $stdin.gets.chomp
print "line 3: "
$stdout.flush
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1} \n#{line2} \n#{line3} \n")
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

puts "And finally, we close it."
target.close