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

	# Age Santa by one year
	def celebrate_birthday
		@age = age + 1
		@age
	end

	# Move reindeer to last place in reindeer ranking
	def get_mad_at(reindeer_name)
		reindeer_name = @reindeer_ranking.delete(reindeer_name)
		reindeer_name = @reindeer_ranking.push(reindeer_name)
		p @reindeer_ranking
	end
	
	# Setter method for changing gender
	def change_gender=(new_gender)
		@gender = new_gender
	end
	
	# Getter method for age
	def age
		@age
	end
	
	# Getter method for ethnicity
	def ethnicity
		@ethnicity
	end

end

# Test code for Release 0

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

# Test code for Release 1

santas = []
genders = ["male", "female", "transgender", "transitioning", "undeclared"]
ethnicities = ["Caucasian", "African-American", "Chinese", "Russian", "Irish"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

p santas

# Output from program

# => [#<Santa:0x0055bb2b9b53e8 @gender="male", @ethnicity="Caucasian", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], 
# @age=0>, #<Santa:0x0055bb2b9b5208 @gender="female", @ethnicity="African-American", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], 
# @age=0>, #<Santa:0x0055bb2b9b5000 @gender="transgender", @ethnicity="Chinese", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], 
# @age=0>, #<Santa:0x0055bb2b9b4e20 @gender="transitioning", @ethnicity="Russian", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], 
# @age=0>, #<Santa:0x0055bb2b9b4c68 @gender="undeclared", @ethnicity="Irish", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], @age=0>]

# Test code for Release 2

santas = []
genders = ["male", "female", "transgender", "transitioning", "undeclared"]
ethnicities = ["Caucasian", "African-American", "Chinese", "Russian", "Irish"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

santas[1].get_mad_at("Dasher")

# Original reindeer_ranking array: ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# New reindeer_ranking array: => ["Rudolph", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Dasher"]