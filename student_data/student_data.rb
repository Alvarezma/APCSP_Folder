lines = open("./student_data.csv").read.split(/\n/)


names = []
eye_colors = []
ages = []
blood_type = []
lines.each do |n|
    data = n.split(',')
    names.push(data[0])
    eye_colors.push(data[1])
    ages.push(data[2])
    blood_type.push(data[3])
end

# Problem 0

def num_of_brown_eyes(eye_colors)
    count = 0
    eye_colors.each do |n|
        if n == "Brown"
            count += 1
        end
    end
    return count
end

puts num_of_brown_eyes(eye_colors)
puts ""

# Problem 1

def old_enough_to_drive(names, ages)
    students = []
    ages.length.times do |i|
        if ages[i].to_i >= 16
            students.push(names[i])
        end
    end
    return students
end


puts old_enough_to_drive(names, ages)
puts ""

# Problem 2

def green_eyed_girls(names, eye_colors)
    green_eyed_girls = []
    names.length.times do |i|
        if i % 2 == 0
            if eye_colors[i] == "Green"
                green_eyed_girls.push(names[i])
            end
        end
    end
    return green_eyed_girls
end

puts green_eyed_girls(names, eye_colors)
puts ""

# Problem 3

def sophomore_vowels(names, ages)
    champion = ""
    most_vowels = 0
    names.length.times do |i|
        num_of_vowels = 0
        if ages[i].to_i == 15
            letters = names[i].split("")
            num_of_vowels = count_vowels(letters)
            if num_of_vowels > most_vowels
                champion = names[i]
                most_vowels = num_of_vowels
            end
        end
    end
    return champion
end

def count_vowels(list_of_letters)
    count = 0
    list_of_letters.each do |n|
        if n == "A" || n == "a" || n == "E" || n == "e" || n == "I" || n == "i" || n == "O" || n == "o" || n == "U" || n == "u"
            count += 1
        end
    end
    return count
end

puts sophomore_vowels(names, ages)
puts ""

# Problem 4

def avg_age_green_eyed_students(eye_colors, ages)
    green_eyed_ages = []
    eye_colors.length.times do |i|
        if eye_colors[i] == "Green"
            green_eyed_ages.push(ages[i])
        end
    end

    sum = 0.0
    green_eyed_ages.each do |n|
        sum += n.to_i
    end

    return (sum / green_eyed_ages.length)
end

puts avg_age_green_eyed_students(eye_colors, ages)
puts ""

# Problem 5

def closest_to_avg_green_age(names, eye_colors, ages)
    closest = []
    lowest_difference = 1000
    avg = avg_age_green_eyed_students(eye_colors, ages)

    names.length.times do |i|
        if eye_colors[i] == "Green"
            diff = (ages[i].to_i - avg).abs

            if diff < lowest_difference
                closest = []
                closest.push(names[i])

                lowest_difference = diff
            elsif diff == lowest_difference
                closest.push(names[i])
            end
        end
    end
    return closest
end

puts closest_to_avg_green_age(names, eye_colors, ages)
puts ""

# Problem 6

def name_the_donors(names, blood_type, recipient_name)
    donators = []
    recipient_blood = find_blood_type(names, blood_type, recipient_name)
    
    names.length.times do |i|
        if names[i] != recipient_name
            if recipient_blood == "O" && blood_type[i] == "O"
                donators.push(names[i])
            elsif recipient_blood == "A" && (blood_type[i] == "A" || blood_type[i] == "O")
                donators.push(names[i])
            elsif recipient_blood == "B" && (blood_type[i] == "B" || blood_type[i] == "O")
                donators.push(names[i])
            elsif recipient_blood == "AB"
                donators.push(names[i])
            end
        end
    end

    return donators
end

def find_blood_type(names, blood_type, target_name)
    names.length.times do |i|
        if names[i] == target_name
            return blood_type[i]
        end
    end
end

puts name_the_donors(names, blood_type, "Zed")
puts ""

# Problem 7

def most_blood_donors(names, blood_type)
    those_with_most_donors = []
    best_num_of_donors = 0

    names.each do |n|
        num_of_donators = 0

        donators = name_the_donors(names, blood_type, n)
        num_of_donators = donators.length

        if num_of_donators > best_num_of_donors
            those_with_most_donors = []
            those_with_most_donors.push(n)
            
            best_num_of_donors = num_of_donators
        elsif num_of_donators == best_num_of_donors
            those_with_most_donors.push(n)
        end
    end

    those_with_most_donors.push(best_num_of_donors)
    return those_with_most_donors
end

puts most_blood_donors(names, blood_type)
puts ""