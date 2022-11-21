# frozen_string_literal: true

class Array
  def select_solo
    select { |el| one?(el) }
  end
end
