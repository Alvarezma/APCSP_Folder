require "gosu"
require "./z_order"

class Player

    attr_reader :x, :y, :alive, :score

    def initialize
        @image = Gosu::Image.new("media/light_ball.png")
        @dead_image = Gosu::Image.new("media/black_hole.png")
        @implode = Gosu::Sample.new("media/killed_sound.wav")
        @x = @y = @velocity_x = @velocity_y = @angle = 0.0
        @score = 0
        @alive = true
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
        if @y > 800
            @y = 800
        end
        if @y < 0
            @y = 0
        end
        

        @velocity_x *= 0.95
        @velocity_y *= 0.95
    end

    def up_score
        @score += 1
    end

    def draw
        if @alive
            @image.draw_rot(@x, @y, ZOrder::PLAYER, @angle, 0.5, 0.5, 0.1, 0.1)
        else
            @dead_image.draw_rot(@x, @y, ZOrder::PLAYER, @angle, 0.5, 0.5, 0.3, 0.3)
        end
    end

    def hit_enemy(blobs, bats)
        blobs.each do |blob|
            if Gosu.distance(@x, @y, blob.x, blob.y) < 50
                @implode.play
                @alive = false
            end
        end
        bats.each do |bat|
            if Gosu.distance(@x, @y, bat.x, bat.y) < 50
                @implode.play
                @alive = false
            end
        end
    end



end