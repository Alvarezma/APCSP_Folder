lines = open("./dogs.csv").read.split(/\n/)


names = []
breeds = []
ages = []
happiness_ratings = []
lines.each do |n|
    data = n.split(',')
    names.push(data[0])
    breeds.push(data[1])
    ages.push(data[2].to_i)
    happiness_ratings.push(data[3].to_f)
end

# Problem 0

def num_of_rottweilers(breeds)
    sum = 0
    breeds.each do |n|
        if n == "Rottweiler"
            sum += 1
        end
    end
    return sum
end

puts num_of_rottweilers(breeds)
puts ""

# Problem 1

def ringworm_shots(names, ages)
    list_of_9yo_dogs = []
    names.length.times do |i|
        if ages[i] == 9
            list_of_9yo_dogs.push(names[i])
        end
    end
    return list_of_9yo_dogs
end

puts ringworm_shots(names, ages)
puts ""

# Problem 2

def happiest_dog_of_breed(target_breed, names, breeds, happiness_ratings)
    greatest_happiness = 0.0
    happiest_dog = ""
    breeds.length.times do |i|
        if breeds[i] == target_breed && happiness_ratings[i] > greatest_happiness
            happiest_dog = names[i]

            greatest_happiness = happiness_ratings[i]
        end
    end
    return happiest_dog
end

puts happiest_dog_of_breed("Pointer", names, breeds, happiness_ratings)
puts happiest_dog_of_breed("Corgi", names, breeds, happiness_ratings)
puts ""

# Problem 3

def happiest_breed(breeds, happiness_ratings)
    greatest_happiness_avg = 0
    happiest_breed = ""
    breeds.each do |name_of_breed|
        avg = avg_happiness_of_breed(name_of_breed, breeds, happiness_ratings)

        if avg > greatest_happiness_avg
            happiest_breed = name_of_breed

            greatest_happiness_avg = avg
        end
    end
    return happiest_breed
end

def avg_happiness_of_breed(target_breed, breeds, happiness_ratings)
    sum = 0.0
    dogs_with_target_breed = 0
    breeds.length.times do |i|
        if breeds[i] == target_breed
            sum += happiness_ratings[i]
            dogs_with_target_breed += 1
        end
    end
    return sum / dogs_with_target_breed
end

puts happiest_breed(breeds, happiness_ratings)
puts ""