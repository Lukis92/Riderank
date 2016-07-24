class Numeric
  # modify view of numbers e.g. 12.00 instead 12.0
  def nice
    sprintf('%.2f', self)
  end
end
