class Calculator
  attr_accessor :result

  def initialize(input)
    @result = input
    @error_state = false
  end

  def invalid_input
    @error_state = true
    @result = 'Oi! Y u enter letter into calculator?!'
    self
  end

  def add(x)
    if @error_state == false
      if x.class == Fixnum || x.class == Float
        self.result += x
        self.result = self.result.round(2)
        self
      else
        invalid_input
      end
  end
    self
  end

  def sub(x)
    if @error_state == false
      if x.class == Fixnum || x.class == Float
        self.result -= x
        self.result = self.result.round(2)
        self
      else
        invalid_input
      end
  end
    self
  end

  def multiply(x)
    if @error_state == false
      if x.class == Fixnum || x.class == Float
        self.result = self.result * x.to_f
        self.result = self.result.round(2)
        self
      else
        invalid_input
      end
  end
    self
  end

  def div(x)
    if @error_state == false
      if x.class == Fixnum || x.class == Float
        self.result /= x
        self.result = self.result.round(2)
        self
      else
        invalid_input
      end
  end
    self
  end

  def reset(x)
    @result = x
  end
end
