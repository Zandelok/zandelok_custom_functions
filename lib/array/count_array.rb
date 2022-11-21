class Array
  def count_elements
    uniq.map { |el| [el, count(el)] }.to_h
  end
end
