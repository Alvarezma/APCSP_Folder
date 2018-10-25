lines = open("./colors.csv").read.split(/\n/)


names = []
fav = []
sec_fav = []
lines.each do |n|
    data = n.split(',')
    names.push(data[0])
    fav.push(data[1])
    sec_fav.push(data[2])
end


def vista_colors(names, fav, sec_fav) 
    names.length.times do |i|
        if  (fav[i] == "green" && sec_fav[i] == "yellow") ||  (fav[i] == "yellow" && sec_fav[i] == "green")
            return true
        end
    end
    return false
end

puts vista_colors(names, fav, sec_fav)

def num_of_blue(names, fav, sec_fav)
    count = 0
    names.length.times do |i|  
        if fav[i] == "blue" || sec_fav[i] == "blue"
            count += 1
        end
    end
    return count
end

puts num_of_blue(names, fav, sec_fav)

def find_total(names, fav, sec_fav, color)
    total = 0
    names.length.times do |i|  
        if fav[i] == color
            total += 1
        end
        if sec_fav[i] == color
            total += 1
        end
    end
    return total
end

puts find_total(names, fav, sec_fav, "white")

def most_popular_color(names, fav, sec_fav)
    best_match = 0
    most_popular_color = ""
    all_colors = fav + sec_fav
    all_colors.each do |x|
        match = 0
        all_colors.each do |y|
            if x == y
                match += 1
            end
        end
        if match > best_match
            most_popular_color = x
            best_match = match
        end
    end
    return most_popular_color
end

puts most_popular_color(names, fav, sec_fav)

def last_red(names, fav, sec_fav)
    name = ""
    names.length.times do |i|  
        if fav[i] == "red" || sec_fav[i] == "red"
            name = names[i]
        end
    end
    return name
end

puts last_red(names, fav, sec_fav)
puts "----------"

def chose_most_pop_color(names, fav, sec_fav)
    color = most_popular_color(names, fav, sec_fav)
    list_of_names = []
    names.length.times do |i|  
        if fav[i] == color || sec_fav[i] == color
            list_of_names.push(names[i])
        end
    end
    return list_of_names
end

puts chose_most_pop_color(names, fav, sec_fav)