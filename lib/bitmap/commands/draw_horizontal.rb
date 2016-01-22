module Bitmap
  module Commands
    class DrawHorizontal
      def self.run(input)
        image = Image.first
        input = input.split
        x1    = input[0].to_i
        x2    = input[1].to_i
        y     = input[2].to_i
        color = input[3]

        if image.out_of_bounds?(x1, y) || image.out_of_bounds?(x2, y)
          puts 'Input out of bounds'
        else
          image.table[-y].fill(color, x1-1..x2-1)
        end
      end
    end
  end
end