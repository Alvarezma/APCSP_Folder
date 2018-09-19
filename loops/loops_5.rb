# challenge 5

words = ["hello", "bye", "why", "bellow", "chello", "jello"]
words.each do |n|
    first = n[0]
    rest = n[1, n.length]
    puts rest + first + "ay"
end