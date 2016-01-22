module Bitmap
  class Session
    WELCOME = 'Hello...you look great today.'

    def self.run
      welcome
      while open
        input = gets.chomp
        Bitmap::CLI.new(input).run
      end
    end

    def self.welcome
      puts WELCOME
    end

    def self.open
      @end.nil?
    end

    def self.end
      @end = true
    end
  end
end