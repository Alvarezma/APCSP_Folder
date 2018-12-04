require "gosu"
require "./z_order"

class Meteor

    # Properties
    # x, y, size, image

    attr_reader :x, :y

    # Abilities
    #

    def initialize
        @image = Gosu::Image.new("media/meteor.png")
        update
        @scale = 0.3
    end

    def draw
        x = @x - @image.width / 2.0 * @scale
        y = @y - @image.height / 2.0 * @scale
        @image.draw(x, y, ZOrder::METEOR, @scale, @scale)
    end

    def move
        @x += @velocity_x
        @y += @velocity_y

        if @x > 1650 || @y > 850 || @x < -50 || @y < -50
            update
        end
    end

    def update
        @x = 1600 * rand
        @y = -50
        @angle = rand * 360
        @velocity_x = Gosu.offset_x(@angle, rand * 10)
        @velocity_y = Gosu.offset_y(@angle, rand * 10)
    end

end