class Image
  WHITE_PIXEL = 'O'

  attr_reader :table

  def initialize(input)
    @coords = parse(input)
    @x      = @coords.first
    @y      = @coords.last
    @table  = create_table
  end

  def to_s
    table.map{ |x| x.join + "\n" }.join
  end

  private
  attr_reader :coords, :x, :y

  def parse(coords)
    coords.split.map(&:to_i)
  end

  def create_table
    y.times.map { x.times.map{ WHITE_PIXEL } }
  end
end