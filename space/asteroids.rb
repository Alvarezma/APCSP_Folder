require "gosu"
require "./player"
require "./star"
require "./meteor"
require "./z_order"

class Asteroids < Gosu::Window

    def initialize
        super 1600, 800
        self.caption = "Asteroids Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
        @win_image = Gosu::Image.new("media/win.png")
        @lose_image = Gosu::Image.new("media/lose.png")
        @font = Gosu::Font.new(20)

        @player = Player.new
        @player.warp(800, 400)

        @stars = []

        @max_stars = 25

        @max_stars.times do |i|
            @stars.push(Star.new)
        end

        @meteors = []

        @max_meteors = 20

        @max_meteors.times do |i|
            @meteors.push(Meteor.new)
        end

        @counter = 0
    end

    def update
        if @player.alive && @stars.length > 0 
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
            @player.hit_meteor(@meteors)

            
            if @counter % 1000 == 0
                @stars.each do |star|
                    star.update
                end
                repawn_star
            end

            @meteors.each do |meteor|
                meteor.move
            end
            
            @counter += 1
        elsif Gosu.button_down?(Gosu::KB_SPACE)
            @player.restart

            (@max_stars - @stars.length).times do |i|
                @stars.push(Star.new)
            end

            @stars.each do |star|
                star.update
            end

            @meteors.each do |meteor|
                meteor.update
            end
            @count = 0
        end
        
    end
    
    def draw
        @background_image.draw(0, 0, ZOrder::BACKGROUND, 0.45, 0.45)
        @player.draw
        @stars.each do |star|
            star.draw
        end

        @meteors.each do |meteor|
            meteor.draw
        end

        if @stars.length == 0
            @win_image.draw(544, 144, ZOrder::UI)
            @font.draw("Final Score: #{@player.score}", 715, 460, ZOrder::UI, 1.5, 1.5, Gosu::Color::WHITE)
        elsif @player.alive == false
            @lose_image.draw(648, 265, ZOrder::UI)
            @font.draw("Final Score: #{@player.score}\nPress space to restart", 715, 460, ZOrder::UI, 1.5, 1.5, Gosu::Color::WHITE)
        else
            @font.draw("Score: #{@player.score}", 10, 10, ZOrder::UI, 2.0, 2.0, Gosu::Color::YELLOW)
        end
    end

    def repawn_star
        if @stars.length < @max_stars && @stars.length != 0
            @stars.push(Star.new)
        end
    end


end

Asteroids.new.show