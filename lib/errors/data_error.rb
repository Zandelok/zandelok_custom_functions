# frozen_string_literal: true

module Errors
  class DataError < StandardError
    def initialize(msg = 'Invalid Data')
      super
    end
  end
end
