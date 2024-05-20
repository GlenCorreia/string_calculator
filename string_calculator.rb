class StringCalculator
	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
		return if @numbers.class != String
		puts @numbers
	end

end

StringCalculator.new("1")