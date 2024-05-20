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
			n_numbers = number_parts.select { |num| num < 0 }
			if n_numbers.any?
				negative_number n_numbers, 2
			end
			number_parts_summed = number_parts.sum
			output = number_parts_summed
		else
			number = numbers.to_i
			if number < 0
				negative_number number, 1
			else
				output = numbers.to_i
			end
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

	def self.negative_number(numbers, type)
		if type == 2
			numbers = numbers.join(', ')
		end
		raise ArgumentError, "negative numbers not allowed #{numbers}"
	end

end

StringCalculator.add("") # 0
StringCalculator.add("12") # 12
StringCalculator.add("13,20") # 33 
StringCalculator.add("1\n4,5") # 10
StringCalculator.add("1,\n") # Nil
StringCalculator.add("//-\n1-2-3-4") # 10 
# StringCalculator.add("-2") # ArgumentError
# StringCalculator.add("1, -2, 3, 4, -5") # ArgumentError

