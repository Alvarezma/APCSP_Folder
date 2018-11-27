require "gosu"
require "./z_order"

class Star

    # Properties
    # x, y, size, image, color

    # Abilities
    #

    def initialize
        @image = Gosu::Image.new("media/star.png")
        @x = rand * 800
        @y = rand * 375
    end

    def draw
        @image.draw(@x, @y, ZOrder::STARS)
    end

end