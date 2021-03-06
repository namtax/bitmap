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
        x: Bitmap::Commands::Terminate,
        m: Bitmap::Commands::Manual
      }

    def self.build(input)
      COMMAND_MAP[sanitize(input)] || invalid_type
    end

    def self.sanitize(input)
      input[0].downcase.to_sym
    end

    def self.invalid_type
      puts 'Please supply a valid command'
    end
  end
end