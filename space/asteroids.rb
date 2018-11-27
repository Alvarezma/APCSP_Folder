require "gosu"
require "./player"
require "./z_order"

class Asteroids < Gosu::Window

    def initialize
        super 800, 375
        self.caption = "Asteroids Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)

        @player = Player.new
        @player.warp(400, 187)
    end

    def update
        if Gosu.button_down?(Gosu::KB_LEFT)
            @player.turn_left
        end
        if Gosu.button_down?(Gosu::KB_RIGHT)
            @player.turn_right
        end
        if Gosu.button_down?(Gosu::KB_UP)
            @player.accelerate
        end
        if Gosu.button_down?(Gosu::KB_DOWN)
            @player.backwards
        end

        @player.move
    end

    def draw
        @background_image.draw(0, 0, ZOrder::BACKGROUND)
        @player.draw

    end


end

Asteroids.new.show