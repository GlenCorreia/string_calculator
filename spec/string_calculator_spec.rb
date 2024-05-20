require_relative '../string_calculator'

describe StringCalculator do
  describe '#calculate' do
    it 'accepts 0 for empty string' do
			expect(StringCalculator.add("")).to eq(0)
    end

		it 'accepts values as is for whole numbers' do 
			expect(StringCalculator.add("12")).to eq(12)
		end

		it 'adds the elements of a comma seperated string of numbers' do
			expect(StringCalculator.add("1,2")).to eq(3)
		end
  end
end