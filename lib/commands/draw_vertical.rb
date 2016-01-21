module Commands
  class DrawVertical
    def self.run(image, input)
      input = input.split
      x     = input[0].to_i
      y1    = input[1][1].to_i
      y2    = input[2][1].to_i
      color = input[3]

      (y1-1..y2-1).each do |row|
        image.table[row][x-1] = color
      end
    end
  end
end