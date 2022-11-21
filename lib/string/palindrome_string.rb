class String
  def palindrome?
    downcase.eql?(downcase.reverse)
  end
end
