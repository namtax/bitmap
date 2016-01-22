require 'bitmap/image'

module Bitmap
  module Commands
    class Create
      def self.run(input)
        if valid?(input)
          Image.create(input)
        else
          puts 'Coords must be between 1 - 250'
        end
      end

      def self.valid?(input)
        input.split.all? { |i| (1..250).include? i.to_i }
      end
    end
  end
end