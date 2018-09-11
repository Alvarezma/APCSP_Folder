file = ARGV.first

def add_to_file(file, addition)
    target = open(file, 'a')
    target.write("\n#{addition}")
    target.close
end

add_to_file(file, "Hello")