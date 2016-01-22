module Bitmap
  module Commands
    class DrawHorizontal
      def self.run(input)
        image = Image.first
        x1, x2, y, color = Params.new(input).to_a

        if image.out_of_bounds?(x1, y) || image.out_of_bounds?(x2, y)
          puts 'Input out of bounds'
        else
          image.table[-y].fill(color, x1-1..x2-1)
        end
      end
    end
  end
end