module Bitmap
  class Params
    def initialize(input)
      @input = input.split
    end

    def to_a
      *coords, color = *input
      [*coords.map(&:to_i), color]
    end

    private
    attr_reader :input
  end
end