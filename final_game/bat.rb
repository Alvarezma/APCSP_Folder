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
        update
        @scale = 0.08
    end

    def draw
        x = @x - @image.width / 2.0 * @scale
        y = @y - @image.height / 2.0 * @scale
        @image.draw(x, y, ZOrder::ENEMIES, @scale, @scale)
    end

    def move(player)
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
    
    def update
        @x = 1600
        @y = rand * 800
        @speed = rand * 5
    end

end