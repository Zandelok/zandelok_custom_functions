# frozen_string_literal: true

class Array
  def count_elements
    uniq.to_h { |el| [el, count(el)] }
  end
end
