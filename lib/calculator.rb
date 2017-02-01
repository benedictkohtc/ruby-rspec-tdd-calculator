class Calculator
  attr_reader :result

  def initialize(input)
    @result = input
  end

  def reset (x)
    @result = x
  end
end
