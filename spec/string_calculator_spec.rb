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

		it 'ignores newline characters' do
			expect(StringCalculator.add("1\n2,3")).to eq(6)
		end

		it 'invalidates input that has newline character at the end of the string' do
			expect(StringCalculator.add("1,\n")).to eq(nil)
		end

		it 'checks for delimiter v1' do
			expect(StringCalculator.add("//;\n1;2")).to eq(3)
		end

		it 'checks for delimiter v2' do
			expect(StringCalculator.add("//-\n1-2-3-4")).to eq(10)
		end

		# it 'expects to raise error' do
		# 	expect(StringCalculator.add("-1")).to raise_error(ArgumentError)
		# end
  end
end