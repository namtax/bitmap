module Bitmap
  module Commands
    class Color
      def self.run(input)
        image       = Image.first
        x, y, color = Params.new(input).to_a

        if image.out_of_bounds?(x, y)
          puts 'Input out of bounds'
        else
          Image.first.table[-y][x-1] = color
        end
      end
    end
  end
end