def gimme_a(topic)
    print "Give #{topic}? "
    $stdout.flush
    return gets.chomp
end

adjective = gimme_a("adjective")

noun = gimme_a("Noun")

noun_2 = gimme_a("Noun")

noun_3 = gimme_a("Noun")

noun_4 = gimme_a("Noun")

noun_5 = gimme_a("Noun")

verb = gimme_a("Verb")

verb_2 = gimme_a("Verb")

puts "Once upon a time there was a #{adjective} #{noun} who went on an adventure to a #{noun_2}.
On this adventure The #{adjective} #{noun} experienced the wonders of #{verb} and #{verb_2}.
The #{adjective} #{noun} had fun #{verb} the #{noun_3} and #{verb_2} the #{noun_4}.
The #{adjective} #{noun} eventually wandered back to their home in the #{noun_5}"