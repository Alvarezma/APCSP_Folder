require "gosu"

class Player

    # Properties (variables)
    #-----------
    # x, y, angle, velocity_x, velocity_y, image, score

    # Ablities (functions)
    #---------

    def initialize
        @image = Gosu::Image.new("media/spaceship.png")
        @x = @y = @velocity_x = @velocity_y = @angle = 0.0
        @score = 0
    end

    def warp(x, y)
        @x = x
        @y = y
    end

    def turn_left
        @angle -= 4.5
    end

    def turn_right
        @angle += 4.5
    end

    def accelerate
        @velocity_x += Gosu.offset_x(@angle, 0.5)
        @velocity_y += Gosu.offset_y(@angle, 0.5)
    end

    def move
        @x += @velocity_x
        @y += @velocity_y

        @x %= 640
        @y %= 480
        @vel_x
    end

    def draw

    end

end