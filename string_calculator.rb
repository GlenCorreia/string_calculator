class StringCalculator

	def self.add(numbers)
		output = nil
		delimiter = ','
		
		if numbers.strip == ""
			output = 0
		elsif numbers.include?(',') || numbers.include?("//")
			if numbers.include? "\n"
				if numbers[0,2] == "//"
					delimiter = numbers[2]
					numbers = numbers[4..-1]
				else
					numbers = sanitize_string(numbers) 
					return if numbers == nil
				end
			end
			number_parts = numbers.split(delimiter).map(&:to_i)
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

StringCalculator.add("//!\n23!23!23")