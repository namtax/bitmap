require 'bitmap/commands/create'
require 'bitmap/commands/clear'
require 'bitmap/commands/color'
require 'bitmap/commands/draw_vertical'
require 'bitmap/commands/draw_horizontal'
require 'bitmap/commands/fill'
require 'bitmap/commands/show'
require 'bitmap/commands/terminate'

module Bitmap
  class Command
    COMMAND_MAP =
      {
        i: Bitmap::Commands::Create,
        c: Bitmap::Commands::Clear,
        l: Bitmap::Commands::Color,
        v: Bitmap::Commands::DrawVertical,
        h: Bitmap::Commands::DrawHorizontal,
        f: Bitmap::Commands::Fill,
        s: Bitmap::Commands::Show,
        x: Bitmap::Commands::Terminate
      }

    def self.build(input)
      COMMAND_MAP[input[0].downcase.to_sym] || invalid_type
    end

    def self.invalid_type
      puts 'Please supply a valid command'
    end
  end
end