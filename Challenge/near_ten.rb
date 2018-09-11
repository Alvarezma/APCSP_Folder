def near_ten(num)
    rem = num % 10
    if (rem <= 2 || rem >= 8)
        return true
    else
        return false
    end
end

num = 11
puts "Given #{num} near_ten = #{near_ten(num)}"

num = 19
puts "Given #{num} near_ten = #{near_ten(num)}"

num = 8
puts "Given #{num} near_ten = #{near_ten(num)}"

num = 5
puts "Given #{num} near_ten = #{near_ten(num)}"