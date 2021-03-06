require "gosu"
require "./z_order"

class Player

    # Properties (variables)
    #-----------
    # x, y, angle, velocity_x, velocity_y, image, score

    attr_reader :score, :alive

    # Ablities (functions)
    #---------

    def initialize
        @image = Gosu::Image.new("media/spaceship.png")
        @dead_image = Gosu::Image.new("media/dead_spaceship.png")
        @beep = Gosu::Sample.new("media/score_sound.wav")
        @explode = Gosu::Sample.new("media/explosion.wav")
        @x = @y = @velocity_x = @velocity_y = @angle = 0.0
        @score = 0
        @alive = true
    end

    def restart
        @score = 0
        @alive = true
        @velocity_x = @velocity_y = @angle = 0.0
        warp(800, 400)
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
        if alive
            @image.draw_rot(@x, @y, ZOrder::PLAYER, @angle, 0.5, 0.5, 0.03, 0.03)
        else
            @dead_image.draw_rot(@x, @y, ZOrder::PLAYER, @angle, 0.5, 0.5, 0.2, 0.2)
        end
    end

    def collect_star(stars)
        stars.reject! do |star|
            if Gosu.distance(@x, @y, star.x, star.y) < 50
                @score += 10
                @beep.play
                true
            else
                false
            end
        end
    end

    def hit_meteor(meteors)
        meteors.each do |meteor|
            if Gosu.distance(@x, @y, meteor.x, meteor.y) < 50
                @explode.play
                @alive = false
            end
        end
    end

end