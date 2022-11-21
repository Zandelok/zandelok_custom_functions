module Errors
  class DataError < StandardError
    def initialize(msg = 'Invalid Data')
      super
    end
  end
end
