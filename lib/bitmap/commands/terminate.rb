module Bitmap
  module Commands
    class Terminate
      GOODBYE = 'Bye. Its been emotional.'

      def self.run(image)
        puts GOODBYE
        Session.end
      end
    end
  end
end