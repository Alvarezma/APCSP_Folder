require "gosu"
require "./player"
require "./star"
require "./z_order"

class Asteroids < Gosu::Window

    def initialize
        super 1600, 800
        self.caption = "Asteroids Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
        @finish_image = Gosu::Image.new("media/win.png")
        @font = Gosu::Font.new(20)

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
        repawn_star
        
        # if @counter % 600 == 0
        #     @stars.each do |star|
        #         star.update
        #     end
        # end
        
        # @counter += 1
        
    end
    
    def draw
        @background_image.draw(0, 0, ZOrder::BACKGROUND, 0.45, 0.45)
        @player.draw
        @stars.each do |star|
            star.draw
        end

        if @stars.length == 5
            @finish_image.draw(544, 144, ZOrder::UI)
            @font.draw("Final Score: #{@player.score}", 715, 460, ZOrder::UI, 1.5, 1.5, Gosu::Color::WHITE)
        else
            @font.draw("Score: #{@player.score}", 10, 10, ZOrder::UI, 2.0, 2.0, Gosu::Color::YELLOW)
        end
    end

    def repawn_star
        if @stars.length < @max_stars
            @stars.push(Star.new)
        end
    end


end

Asteroids.new.show