# Class declaration for Santa
class Santa
	
	# Print message when a new instance of Santa is created and define attributes
	def initialize(gender, ethnicity)
		"Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# Method for holiday greeting
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	# Extrapolate cookie from argument in return message about cookie
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
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