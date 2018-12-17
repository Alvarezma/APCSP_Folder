require "gosu"
require "./z_order"

class Blob

    # Properties
    # x, y, size, image

    attr_reader :x, :y

    # Abilities
    #

    def initialize
        @image = Gosu::Image.new("media/shadow_blob.png")
        @spawn_point = rand(4)
        update
        @scale = 0.4
    end

    def draw
        x = @x - @image.width / 2.0 * @scale
        y = @y - @image.height / 2.0 * @scale
        @image.draw(x, y, ZOrder::ENEMIES, @scale, @scale)
    end

    def move()
        @x += @velocity_x
        @y += @velocity_y

        if @x > 1650 || @y > 850 || @x < -50 || @y < -50
            update
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
        @angle = rand * 360
        @velocity_x = Gosu.offset_x(@angle, (rand * 4) + 1)
        @velocity_y = Gosu.offset_y(@angle, (rand * 4) + 1)
    end

end