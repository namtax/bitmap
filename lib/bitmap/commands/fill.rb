module Bitmap
  module Commands
    class Fill
      def self.run(input)
        image = Image.first
        x, y, new_color = Params.new(input).to_a

        if image.out_of_bounds?(x, y)
          puts 'Input out of bounds'
        else
          color = image.table[-y][x-1]
          color_pixel(image, x-1, -y, color, new_color)
        end
      end

      def self.color_pixel(image, x, y, color, new_color)
        return if invalid_pixel?(image.table, x, y, color, new_color)

        image.table[y][x] = new_color

        [[x + 1, y], [x - 1, y], [x, y + 1], [x, y - 1]].each do |c|
          color_pixel(image, *c, color, new_color)
        end
      end

      def self.invalid_pixel?(table, x, y, color, new_color)
        table[y].nil? || table[y][x].nil? || table[y][x] != color || table[y][x] == new_color
      end
    end
  end
end