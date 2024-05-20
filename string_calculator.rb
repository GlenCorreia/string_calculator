class StringCalculator

	def self.add(numbers)
		output = nil

		if numbers.strip == ""
			output = 0
		elsif numbers.include? ','
			if numbers.include? "\n"
				numbers = sanitize_string(numbers) 
			end
			number_parts = numbers.split(',').map(&:to_i)
			number_parts_summed = number_parts.sum
			output = number_parts_summed
		else
			output = numbers.to_i
		end
		puts output
		return output
	end

	def self.sanitize_string(numbers)
		numbers.sub! "\n", ","
	end

end

StringCalculator.add("12\n2,3")