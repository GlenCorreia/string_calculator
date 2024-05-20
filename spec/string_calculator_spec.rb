require_relative '../string_calculator'

describe StringCalculator do
  describe '#calculate' do
    it 'accepts 0 for empty string' do
			expect(StringCalculator.add("")).to eq(0)
    end
  end
end