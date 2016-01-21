module Bitmap
  module Commands
    class Color
      def self.run(input)
        input = input.split
        x     = input[0].to_i
        y     = input[1].to_i
        color = input[2]

        Image.first.table[-y][x-1] = color
      end
    end
  end
end