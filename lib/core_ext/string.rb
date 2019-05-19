class String
  def calculize
    operators = %i[+ - * /]

    operators.each do |operator|
      units = split(operator.to_s)
      return units.map(&:calculize).reduce(operator) if units.size > 1
    end
    to_f
  end
end
