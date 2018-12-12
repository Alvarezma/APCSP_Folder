require "gosu"
require "./z_order"
require "./player"
require "./bat"

class Asteroids < Gosu::Window

    def initialize
        super 1600, 800
        self.caption = "Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)

        @player = Player.new
        @player.teleport(800, 400)

        @bats = []

        @max_bats = 10

        @max_bats.times do |i|
            @bats.push(Bat.new)
        end
    end

    def update
        if Gosu.button_down?(Gosu::KB_LEFT)
            @player.move_left
        end
        if Gosu.button_down?(Gosu::KB_RIGHT)
            @player.move_right
        end
        if Gosu.button_down?(Gosu::KB_UP)
            @player.move_up
        end
        if Gosu.button_down?(Gosu::KB_DOWN)
            @player.move_down
        end

        @bats.each do |bat|
            bat.move(@player)
        end

        @player.move
    end
    
    def draw
        @background_image.draw(0, 0, ZOrder::BACKGROUND, 1, 1)
        @player.draw

        @bats.each do |bat|
            bat.draw
        end
    end

end

Asteroids.new.show