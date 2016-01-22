require 'bitmap/image'

module Bitmap
  module Commands
    class Create
      def self.run(input)
        if input.split.all? { |i| (1..250).include? i.to_i }
          Image.create(input)
        else
          puts 'Coords must be between 1 - 250'
        end
      end
    end
  end
end