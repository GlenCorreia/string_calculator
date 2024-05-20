class StringCalculator

	def self.add(numbers)
		output = nil

		if numbers.strip == ""
			output = 0
		else
			output = numbers.to_i
		end
		puts output
		return output
	end

end

StringCalculator.add("10")