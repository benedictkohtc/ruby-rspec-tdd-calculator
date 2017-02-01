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
      expect (@my_calculator.result) .to eq('Oi! Y u enter letter into calculator?!')
    end
  end

end
