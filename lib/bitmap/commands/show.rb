module Bitmap
  module Commands
    class Show
      def self.run(image)
        image.to_s
      end
    end
  end
end