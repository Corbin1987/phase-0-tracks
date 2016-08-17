# Class declaration for Santa
class Santa

	# Method for holiday greeting
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	# Extrapolate cookie from argument in return message about cookie
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	# Print message when a new instance of Santa is created
	def initialize
		"Initializing Santa instance..."
	end
end

# Test code

mr_claus = Santa.new
# Output from program
# "Initializing Santa instance..."
# => #<Santa:0x0055779a331500>

mr_claus.speak
# Output from program
# =>"Ho, ho, ho! Haaaappy holidays!"

mr_claus.eat_milk_and_cookies("chocolate chip cookie")
# Output from program
# => "That was a good chocolate chip cookie!"