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
        @spawn_point = rand(4)
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
        if @spawn_point == 0
            @x = 1600 * rand
            @y = -50
        elsif @spawn_point == 1
            @x = 1600 * rand
            @y = 850
        elsif @spawn_point == 2
            @x = -50
            @y = 800 * rand
        elsif @spawn_point == 3
            @x = 1650
            @y = 800 * rand
        end
        @speed = (rand * 4) + 1
    end

end