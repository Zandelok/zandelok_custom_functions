require_relative '../errors/errors'
require_relative 'helpers/hashtag_helper'

module Zandelok
  class Functions
    def self.multiply(*args)
      raise Errors::TypeError, 'Method accept only integers' unless args.all?(Integer)

      args.reduce(:*)
    end

    def self.missing_numbers(numbers)
      raise Errors::TypeError, 'Method accept only array' unless numbers.is_a?(Array)
      raise Errors::DataError, "Array should consist of two or more variables" unless numbers.size >= 2

      [*numbers.min..numbers.max] - numbers
    end

    def self.generate_hashtag(input)
      if input.is_a?(Array)
        Zandelok::Helpers::HashtagHelper.make_hashtag(input)
      elsif input.is_a?(String)
        Zandelok::Helpers::HashtagHelper.make_hashtag(input.split)
      else
        raise Errors::TypeError, 'Method accept only array or string'
      end
    end
  end
end
