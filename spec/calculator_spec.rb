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
        expect(@my_calculator.output).to eq(1)
      end
  end
  # Tests go here
end
