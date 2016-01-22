module Bitmap
  module Commands
    class Fill
      def self.run(input)
        image     = Image.first
        input     = input.split
        x         = input[0].to_i
        y         = input[1].to_i
        new_color = input[2]

        if image.out_of_bounds?(x, y)
          puts 'Input out of bounds'
        else
          color = image.table[-y][x-1]
          color_pixel(image, x-1, -y, color, new_color)
        end
      end

      def self.color_pixel(image, x, y, color, new_color)
        return if (image.table[y][x] != color || image.table[y][x] == new_color )

        image.table[y][x] = new_color

        color_pixel(image, x + 1, y, color, new_color)
        color_pixel(image, x - 1, y, color, new_color)
        color_pixel(image, x, y + 1, color, new_color)
        color_pixel(image, x, y - 1, color, new_color)
      end
    end
  end
end