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
      COMMAND_MAP[input[0].downcase.to_sym]
    end
  end
end