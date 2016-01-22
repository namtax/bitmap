module Bitmap
  class Image
    WHITE_PIXEL = 'O'

    def self.create(input)
      @first = new(input)
    end

    def self.first
      @first
    end

    attr_reader :table, :x, :y

    def initialize(input)
      coords    = parse(input)
      @x        = coords.first
      @y        = coords.last
      @table    = create_table
    end

    def out_of_bounds?(input_x, input_y)
      (input_x > x || input_x < 1 || input_y > y || input_y < 1)
    end

    def to_s
      table.map{ |x| x.join + "\n" }.join
    end

    private

    def parse(coords)
      coords.split.map(&:to_i)
    end

    def create_table
      y.times.map { x.times.map{ WHITE_PIXEL } }
    end
  end
end