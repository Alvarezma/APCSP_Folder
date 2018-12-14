require "gosu"
require "./z_order"

class Projectile

    attr_reader :x, :y

    def initialize
        @image = Gosu::Image.new("media/shot_blast.png")
        @shot = Gosu::Sample.new("media/shooting.wav")
        @implode = Gosu::Sample.new("media/killed_sound.wav")
        @x = @y = -200
        @velocity_x = @velocity_y = 0.0
        @fired = false
        @scale = 0.2
    end

    def teleport(x, y)
        @x = x
        @y = y
    end

    def shot_left(x, y)
        if !@fired
            @velocity_x = -5
            @fired = true
            teleport(x, y)
            @shot.play
        end
    end
    
    def shot_right(x, y)
        if !@fired
            @velocity_x = 5
            @fired = true
            teleport(x, y)
            @shot.play
        end
    end

    def shot_up(x, y)
        if !@fired
            @velocity_y = -5
            @fired = true
            teleport(x, y)
            @shot.play
        end
    end
    
    def shot_down(x, y)
        if !@fired
            @velocity_y = 5
            @fired = true
            teleport(x, y)
            @shot.play
        end
    end

    def move
        @x += @velocity_x
        @y += @velocity_y

        if @x > 1600 || @x < 0 || @y > 800 || @y < 0
            reload
        end
    end

    def draw
        x = @x - @image.width / 2.0 * @scale
        y = @y - @image.height / 2.0 * @scale
        if @fired
            @image.draw(x, y, ZOrder::PROJECTILE, @scale, @scale)
        end
    end

    def reload
        @fired = false
        teleport(-200, -200)
        @velocity_x = 0
        @velocity_y = 0
    end

    def kill_enemy(blobs, bats)
        blobs.reject! do |blob|
            if Gosu.distance(@x, @y, blob.x, blob.y) < 50
                true
                reload
                @implode.play
            else
                false
            end
        end
        bats.reject! do |bat|
            if Gosu.distance(@x, @y, bat.x, bat.y) < 50
                true
                reload
                @implode.play
            else
                false
            end
        end
    end



end