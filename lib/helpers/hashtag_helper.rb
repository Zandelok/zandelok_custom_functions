# frozen_string_literal: true

require_relative '../errors/errors'

module Helpers
  class HashtagHelper
    def self.make_hashtag(array)
      raise Errors::DataError, 'Hashtag should consist of one or more symbols' if array.empty?

      hashtag = "##{array.map(&:to_s).map(&:capitalize).join}"
      raise Errors::DataError, 'Hashtag max length 140 symbols' if hashtag.length > 140

      hashtag
    end
  end
end
