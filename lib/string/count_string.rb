# frozen_string_literal: true

class String
  def count_chars
    chars.group_by(&:itself).transform_values(&:count)
  end
end
