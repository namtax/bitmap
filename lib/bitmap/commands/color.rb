module Bitmap
  module Commands
    class Color
      def self.run(image, input)
        input = input.split
        x     = input[0].to_i
        y     = input[1].to_i
        color = input[2]

        image.table[-y][x-1] = color
      end
    end
  end
end