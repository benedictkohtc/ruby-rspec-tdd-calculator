require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    @my_calculator = Calculator.new(1)
  end

  describe 'Initialization' do
    it 'is an instance of the Calculator class' do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
  end

  describe 'Inital Return' do
    it 'should return 1' do
      expect(@my_calculator.result).to eq(1)
    end
  end

  describe 'Results' do
    it 'my_calculator.result should return the current result' do
      expect(@my_calculator.result).to eq(1)
    end
    it 'my_calculator.result should be read only' do
      @my_calculator.result = 137 if respond_to? :result=
      expect(@my_calculator.result).to eq(1)
    end
    it 'my_calculator.reset(x) should reset the calculator to x' do
      @my_calculator.reset(7)
      expect(@my_calculator.result).to eq(7)
    end
  end

  describe 'Add' do
    it 'my_calculator.add should add to the current result' do
      @my_calculator = Calculator.new(1)
      @my_calculator.add(5)
      expect(@my_calculator.result).to eq(6)
    end
    it 'my_calculator.add should add to the current result even if it is a float' do
      @my_calculator = Calculator.new(1)
      @my_calculator.add(5.5)
      expect(@my_calculator.result).to eq(6.5)
    end
    it 'my_calculator.add should not add a string' do
      @my_calculator.add('string')
      expect(@my_calculator.result).to eq('Oi! Y u enter letter into calculator?!')
    end
  end

  describe 'Minus' do
    it 'my_calculator.sub should subtract integers from the internal result' do
      @my_calculator = Calculator.new(10)
      @my_calculator.sub(3)
      expect(@my_calculator.result).to eq(7)
    end
    it 'my_calculator.sub should subtract floats from the internal result' do
      @my_calculator = Calculator.new(10.5)
      @my_calculator.sub(3.5)
      expect(@my_calculator.result).to eq(7)
    end
    it 'my_calculator.sub should not subtract non numerals' do
      @my_calculator.sub('three')
      expect(@my_calculator.result).to eq('Oi! Y u enter letter into calculator?!')
    end
  end

  describe 'Multiply' do
    it 'my_calculator.multiply should multiply integers from the internal result' do
      @my_calculator = Calculator.new(3)
      @my_calculator.multiply(3)
      expect(@my_calculator.result).to eq(9)
    end
    it 'my_calculator.multiply should multiply floats from the internal result' do
      @my_calculator = Calculator.new(1.1)
      @my_calculator.multiply(3)
      expect(@my_calculator.result).to eq(3.3)
    end
    it 'my_calculator.multiply should not multiply non numerals' do
      @my_calculator.multiply('three')
      expect(@my_calculator.result).to eq('Oi! Y u enter letter into calculator?!')
    end
  end
end
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
