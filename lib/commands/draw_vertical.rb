module Commands
  class DrawVertical
    def self.run(image, input)
      input = input.split
      x     = input[0].to_i
      y1    = input[1][1].to_i
      y2    = input[2][1].to_i
      color = input[3]

      image.table[-y1][x-1] = color
      image.table[-y2][x-1] = color
    end
  end
end