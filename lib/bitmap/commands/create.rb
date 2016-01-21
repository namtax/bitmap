require 'bitmap/image'

module Bitmap
  module Commands
    class Create
      def self.run(input)
        Image.create(input)
      end
    end
  end
end