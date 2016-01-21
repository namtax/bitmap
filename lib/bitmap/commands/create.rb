module Bitmap
  module Commands
    class Create
      def self.run(input)
        Image.new(input)
      end
    end
  end
end