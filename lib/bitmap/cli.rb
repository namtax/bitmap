require 'bitmap/command'
require 'bitmap/input_validator'

module Bitmap
  class CLI
    def initialize(input)
      @input    = input
      @command  = input.to_s[0]
      @opts     = input.to_s[2..-1]
    end

    def run
      if !Bitmap::InputValidator.run(input).valid?
        puts 'Please provide a valid command'
      else
        Bitmap::Command.build(command).run(opts)
      end
    end

    private
    attr_reader :input, :command, :opts
  end
end