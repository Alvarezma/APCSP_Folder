require "gosu"
require "./z_order"

class Player

    attr_reader :x, :y

    def initialize
        @image = Gosu::Image.new("media/light_ball.png")
        @x = @y = @velocity_x = @velocity_y = @angle = 0.0
        @score = 0
    end

    def teleport(x, y)
        @x = x
        @y = y
    end

    def move_left
        @velocity_x -= 0.5
    end
    
    def move_right
        @velocity_x += 0.5
    end

    def move_up
        @velocity_y -= 0.5
    end
    
    def move_down
        @velocity_y += 0.5
    end

    def move
        @x += @velocity_x
        @y += @velocity_y

        if @x > 1600
            @x = 1600
        end
        if @x < 0
            @x = 0
        end
        if @y > 1600
            @y = 1600
        end
        if @y < 0
            @y = 0
        end
        

        @velocity_x *= 0.95
        @velocity_y *= 0.95
    end

    def draw
        @image.draw_rot(@x, @y, ZOrder::PLAYER, @angle, 0.5, 0.5, 0.1, 0.1)
    end

end