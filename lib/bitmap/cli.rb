module Bitmap
  class CLI
    def initialize(input)
      @command_type = input[0]
      @instructions = input[2..-1]
    end

    def run
      Command.build(command_type).run(instructions)
    end

    private
    attr_reader :command_type, :instructions
  end
end