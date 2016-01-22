module Bitmap
  module Commands
    class DrawVertical
      def self.run(input)
        image = Image.first
        x, y1, y2, color = Params.new(input).to_a

        if image.out_of_bounds?(x, y1) || image.out_of_bounds?(x, y2)
          puts 'Input out of bounds'
        else
          (y1-1..y2-1).each { |row| image.table[row][x-1] = color }
        end
      end
    end
  end
end