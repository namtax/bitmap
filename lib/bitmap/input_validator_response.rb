module Bitmap
  class InputValidatorResponse
    def initialize(valid)
      @valid = valid
    end

    def valid?
      valid
    end

    private
    attr_reader :valid
  end
end