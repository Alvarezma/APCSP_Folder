require "gosu"

class Asteroids < Gosu::Window

    def initialize
        super 800, 375
        self.caption = "Asteroids Game"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
    end

    def update

    end

    def draw
        @background_image.draw(0, 0, 0)

    end


end

Asteroids.new.show