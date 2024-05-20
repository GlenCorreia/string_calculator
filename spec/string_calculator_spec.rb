require_relative '../string_calculator'

describe StringCalculator do
  describe '#calculate' do
    it 'checks if the entered value is a string' do
      s_calculator = StringCalculator.new("")
      expect(s_calculator.numbers.class).to eq(String)
    end
  end
end