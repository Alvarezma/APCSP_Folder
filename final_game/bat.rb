require "gosu"
require "./z_order"

class Bat

    # Properties
    # x, y, size, image

    attr_reader :x, :y

    # Abilities
    #

    def initialize
        @image = Gosu::Image.new("media/bat.png")
        @wanderer = @seeker = false
        update
        @scale = 0.1
    end

    def draw
        x = @x - @image.width / 2.0 * @scale
        y = @y - @image.height / 2.0 * @scale
        @image.draw(x, y, ZOrder::ENEMIES, @scale, @scale)
    end

    def move(player)
        if @wanderer
            @x += @velocity_x
            @y += @velocity_y
            @x %= 1600
            @y %= 800
        elsif @seeker
            if @x < player.x - 5
                @x += @speed
            elsif @x > player.x + 5
                @x -= @speed
            end
            if @y < player.y - 5
                @y += @speed
            elsif @y > player.y + 5
                @y -= @speed
            end
        end
    end
    
    def update
        @type = rand(2)
        if @type == 0
            @seeker = true
            @wanderer = false
        else @type == 1
            @wanderer = true
            @seeker = false
        end
        @x = 1600
        @y = rand * 800
        @angle = rand * 360
        @velocity_x = Gosu.offset_x(@angle, rand * 5)
        @velocity_y = Gosu.offset_y(@angle, rand * 5)
        @speed = rand * 5
    end

end