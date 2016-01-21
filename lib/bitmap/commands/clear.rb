module Bitmap
  module Commands
    class Clear
      def self.run(input)
        Image.first.table.map!{ |row| row.fill(Image::WHITE_PIXEL) }
      end
    end
  end
end