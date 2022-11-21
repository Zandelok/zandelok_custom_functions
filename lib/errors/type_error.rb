module Errors
  class TypeError < StandardError
    def initialize(msg = 'Invalid Type')
      super
    end
  end
end
