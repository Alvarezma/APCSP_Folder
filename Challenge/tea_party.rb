def tea_party(tea, candy)
    good = tea >= 5 && candy >= 5
    if (good && (tea >= candy * 2 || candy >= tea * 2))
        return 2
    elsif (good)
        return 1
    else
        return 0
    end
end

tea = 6
candy = 8
puts "tea: #{tea} -- candy: #{candy} Then #{tea_party(tea, candy)}"

tea = 3
candy = 8
puts "tea: #{tea} -- candy: #{candy} Then #{tea_party(tea, candy)}"

tea = 20
candy = 6
puts "tea: #{tea} -- candy: #{candy} Then #{tea_party(tea, candy)}"