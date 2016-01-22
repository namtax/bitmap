module Bitmap
  class InputValidator
    CONDITIONS = {
      create: /^I \d+ \d+$/,
      clear: /^C$/,
      color: /^L \d+ \d+ \w$/,
      vertical: /^V \d+ \d+ \d+ \w$/,
      horizontal: /^H \d+ \d+ \d+ \w$/,
      fill: /^F \d+ \d+ \w$/,
      show: /^S$/,
      terminate: /^X$/,
      help: /^man$/
    }

    def self.run(input)
      valid = CONDITIONS.values.any?{ |c| input[c] }
      InputValidatorResponse.new(valid)
    end
  end
end