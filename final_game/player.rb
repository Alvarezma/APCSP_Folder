require "gosu"
require "./z_order"

class Player

    def initialize
        @image = Gosu::Image.new("media/ghost.png")
        @x = @y = @velocity_x = @velocity_y = @angle = 0.0
        @score = 0
    end

    def teleport(x, y)
        @x = x
        @y = y
    end

    def turn_left
        @angle -= 4.5
    end

    def turn_right
        @angle += 4.5
    end

    def forewards
        @velocity_x += Gosu.offset_x(@angle, 0.5)
        @velocity_y += Gosu.offset_y(@angle, 0.5)
    end

    def backwards
        @velocity_x -= Gosu.offset_x(@angle, 0.5)
        @velocity_y -= Gosu.offset_y(@angle, 0.5)
    end

    def move
        @x += @velocity_x
        @y += @velocity_y

        @x %= 1600
        @y %= 800

        @velocity_x *= 0.95
        @velocity_y *= 0.95
    end

    def draw
        @image.draw_rot(@x, @y, ZOrder::PLAYER, @angle, 0.5, 0.5, 0.03, 0.03)
    end

end