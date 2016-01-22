module Bitmap
  module Commands
    class Color
      def self.run(input)
        image  = Image.first
        input  = input.split
        x      = input[0].to_i
        y      = input[1].to_i
        color  = input[2]

        if (x > image.x || x < 1 || y > image.y || y < 1)
          puts 'Input out of bounds'
        else
          Image.first.table[-y][x-1] = color
        end
      end
    end
  end
end