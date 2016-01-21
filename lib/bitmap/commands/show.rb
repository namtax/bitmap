module Bitmap
  module Commands
    class Show
      def self.run(image)
        puts Image.first.to_s
      end
    end
  end
end