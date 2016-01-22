module Bitmap
  module Commands
    class DrawVertical
      def self.run(input)
        image = Image.first
        input = input.split
        x     = input[0].to_i
        y1    = input[1].to_i
        y2    = input[2].to_i
        color = input[3]

        if image.out_of_bounds?(x, y1) || image.out_of_bounds?(x, y2)
          puts 'Input out of bounds'
        else
          (y1-1..y2-1).each { |row| image.table[row][x-1] = color }
        end
      end
    end
  end
end