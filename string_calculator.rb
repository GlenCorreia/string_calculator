class StringCalculator

	def self.add(numbers)
		output = nil

		if numbers.strip == ""
			output = 0
		elsif numbers.include? ','
			number_parts = numbers.split(',').map(&:to_i)
			number_parts_summed = number_parts.sum
			output = number_parts_summed
		else
			output = numbers.to_i
		end
		puts output
		return output
	end

end

StringCalculator.add("12,14")