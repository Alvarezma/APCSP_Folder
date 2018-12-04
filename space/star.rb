require "gosu"
require "./z_order"

class Star

    # Properties
    # x, y, size, image, color

    attr_reader :x, :y

    # Abilities
    #

    def initialize
        @image = Gosu::Image.new("media/star.png")
        update
        @scale = 1
    end

    def draw
        x = @x - @image.width / 2.0 * @scale
        y = @y - @image.height / 2.0 * @scale
        @image.draw(x, y, ZOrder::STARS, @scale, @scale, @color, :add)
    end

    def update
        update_color
        update_position
    end

    def update_color
        # red   0 -> 255
        # green 0 -> 255
        # blue  0 -> 255
        @color = Gosu::Color::BLACK.dup
        @color.red   = rand * (256 - 80) + 80
        @color.green = rand * (256 - 80) + 80
        @color.blue  = rand * (256 - 80) + 80
    end

    def update_position
        @x = rand * 1600
        @y = rand * 800
    end

end