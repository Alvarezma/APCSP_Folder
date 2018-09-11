days = "Mon Tue Wed Thu Fri Sat Sun" #define strings and also format
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}" # Insert strings into statement
puts "Here are the months: #{months}"

puts %{
There's something going on here.
With this weird quote
We'll be able to type as much as we like.
Even 4 lines od we want, or 5, or 6.
} #uses % symbol to print out the paragraph in the format it appear in code