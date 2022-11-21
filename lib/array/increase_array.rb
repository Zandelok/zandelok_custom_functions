# frozen_string_literal: true

class Array
  def increase_with_index
    map&.with_index { |el, i| el + i }
  end

  def increase_with_position
    map&.with_index(1) { |el, i| el + i }
  end
end
