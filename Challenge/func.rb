#Area of a cirle
def cir_area(r)
    return (r * r * Math::PI)
end

puts "The radius is: 3 \nThe area is: #{cir_area(3)}"

#Distance beween points
def distance_points(x1, y1, x2, y2)
    return Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
end

puts "#{distance_points(-1,0,1,0)}"