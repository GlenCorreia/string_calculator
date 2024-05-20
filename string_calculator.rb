class StringCalculator

	def self.add(numbers)
		output = nil

		if numbers.strip == ""
			output = 0
		elsif numbers.include? ','
			if numbers.include? "\n"
				numbers = sanitize_string(numbers) 
				return if numbers == nil
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
		if numbers.end_with? "\n"
			nil
		else
			numbers.sub! "\n", ","
		end
	end

end

StringCalculator.add("111,222,\n")