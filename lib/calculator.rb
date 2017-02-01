class Calculator
  attr_accessor :result

  def initialize(input)
    @result = input
  end

  def invalid_input
    @result = 'Oi! Y u enter letter into calculator?!'
  end

  def add(x)
    if x.class == Fixnum || x.class == Float
      self.result += x
    else
      invalid_input
    end
  end

  def sub(x)
    if x.class == Fixnum || x.class == Float
      self.result -= x
    else
      invalid_input
    end
  end

  def mult(x)
    if x.class == Fixnum || x.class == Float
      self.result *= x
    else
      invalid_input
    end
  end

  def reset(x)
    @result = x
  end
end
