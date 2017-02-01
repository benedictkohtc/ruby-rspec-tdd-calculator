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
      @my_calculator.result = 2
      expect(@my_calculator.result).to eq(1)
    end
    it 'my_calculator.reset(x) should reset the calculator to x' do
      @my_calculator.reset(7)
      expect(@my_calculator.result).to eq(7)
    end
  end
end
