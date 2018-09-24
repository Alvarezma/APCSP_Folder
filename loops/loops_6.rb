# Challenge 6

paragraph = "Good morning, how was your night your day fine sir. I am doing swell."
words = []

paragraph.split(' ').each do |n|
    first = n[0]
    if (n[n.length - 1] == "." || n[n.length - 1] == "," || n[n.length - 1] == "?" || n[n.length - 1] == ";" || n[n.length - 1] == ":")
        rest = n[1, n.length - 2]
        words.push(rest + first + "ay" + n[n.length - 1])
    else
        rest = n[1, n.length]
        words.push(rest + first + "ay")
    end
end

puts words.join(" ")