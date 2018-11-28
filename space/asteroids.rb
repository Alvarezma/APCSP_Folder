require "gosu"
require "./player"
require "./star"
require "./z_order"

class Asteroids < Gosu::Window

    def initialize
        super 1600, 800
        self.caption = "Asteroids Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)

        @player = Player.new
        @player.warp(800, 400)

        @stars = []

        @max_stars = 25

        @max_stars.times do |i|
            @stars.push(Star.new)
        end

        @counter = 0
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
        @player.collect_star(@stars)

        # if @counter % 600 == 0
        #     @stars.each do |star|
        #         star.update
        #     end
        # end

        # @counter += 1

        if @stars.length == 0
            
        end
    end

    def draw
        @background_image.draw(0, 0, ZOrder::BACKGROUND, 0.45, 0.45)
        @player.draw
        @stars.each do |star|
            star.draw
        end
    end


end

Asteroids.new.show