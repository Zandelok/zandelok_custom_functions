class String
  def camelcase
    str = split(/[^a-zA-Z]/)
    str.map { |el| el == str.first ? el : el.capitalize }.join
  end
end
