class Float
  def try_integer
    to_i == self ? to_i : self
  end
end
