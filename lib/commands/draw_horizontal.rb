module Commands
  class DrawHorizontal
    def self.run(image, input)
      input = input.split
      x1    = input[0][1].to_i
      x2    = input[1][1].to_i
      y     = input[2].to_i
      color = input[3]

      image.table[-y][x1-1] = color
      image.table[-y][x2-1] = color
    end
  end
end