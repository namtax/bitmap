module Bitmap
  module Commands
    class DrawHorizontal
      def self.run(input)
        input = input.split
        x1    = input[0][1].to_i
        x2    = input[1][1].to_i
        y     = input[2].to_i
        color = input[3]

        Image.first.table[-y].fill(color, x1-1..x2-1)
      end
    end
  end
end