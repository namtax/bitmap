require 'bitmap/command'
require 'bitmap/input_validator'

module Bitmap
  class CLI
    def initialize(i)
      @input          = i.strip
      @input_command  = input.to_s[0]
      @opts           = input.to_s[2..-1]
    end

    def run
      if !InputValidator.run(input).valid?
        puts 'Please provide a valid command'
      elsif !creating_image? && Image.first.nil?
        puts 'Image does not exist'
      else
        command.run(opts)
      end
    end

    private
    attr_reader :input, :input_command, :command, :opts

    def creating_image?
      command == Commands::Create
    end

    def command
      @command ||= Command.build(input_command)
    end
  end
end