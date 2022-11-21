# frozen_string_literal: true

class String
  def palindrome?
    downcase.eql?(downcase.reverse)
  end
end
