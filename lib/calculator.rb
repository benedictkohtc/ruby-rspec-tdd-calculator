class Calculator
  attr_accessor :result

  def initialize(input)
    @result = input
  end

  def add(x)
    if x.class == Fixnum || x.class == Float
      self.result += x
    else
      @result = 'Oi! Y u enter letter into calculator?!'
    end
  end

  def reset(x)
    @result = x
  end
end
