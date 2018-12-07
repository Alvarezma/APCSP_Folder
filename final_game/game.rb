require "gosu"
require "./z_order"
require "./player"

class Asteroids < Gosu::Window

    def initialize
        super 1600, 800
        self.caption = "Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)

        @player = Player.new
        @player.teleport(800, 400)
    end

    def update
        if Gosu.button_down?(Gosu::KB_LEFT)
            @player.turn_left
        end
        if Gosu.button_down?(Gosu::KB_RIGHT)
            @player.turn_right
        end
        if Gosu.button_down?(Gosu::KB_UP)
            @player.forewards
        end
        if Gosu.button_down?(Gosu::KB_DOWN)
            @player.backwards
        end

        @player.move
    end
    
    def draw
        @background_image.draw(0, 0, ZOrder::BACKGROUND, 1, 1)
        @player.draw
    end

end

Asteroids.new.show