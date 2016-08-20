# Class declaration for Santa
class Santa
	attr_reader :ethnicity
	attr_accessor :age, :gender
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

santas[1].celebrate_birthday
# Output from program:
# => 1

santas[1].get_mad_at("Dasher")
# Original reindeer_ranking array: ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# Output from program:
# New reindeer_ranking array: => ["Rudolph", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Dasher"]

santas[4].change_gender=("male")
# Output from program:
# <Santa:0x0055cc25892b18 @gender="male", @ethnicity="Irish", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], @age=0>

santas[2].age
# Output from program:
# => 0

santas[2].ethnicity
# Output from program:
# => "Chinese"

# Test code for Release 3

santas = []
genders = ["male", "female", "transgender", "transitioning", "undeclared"]
ethnicities = ["Caucasian", "African-American", "Chinese", "Russian", "Irish"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

santas[4].gender
p santas[4]
# Output from program:
# <Santa:0x0055e663942e70 @gender="undeclared", @ethnicity="Irish", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], @age=0>

santas[4].gender=("male")
p santas[4]
# Output from program:
# => #<Santa:0x0055e663942e70 @gender="male", @ethnicity="Irish", 
# @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], @age=0>

santas[3].age
# Output from program:
# => 0

santas[3].ethnicity
# Output from program:
# => "Russian"

# Test code for Release 4
# Write a program that creates lots of Santas. If you're on a cloud-based environment, 
# you may not want to push it past about a hundred Santas. If you're on a faster computer, 
# you may be able to make lots more than that. Play around with the numbers and see what happens.

# Obviously, no one wants to create ten thousand Santas by hand. That's what computers are for!

# Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like -- 
# each array could have a lot more options in it!) to create your Santas with a randomly selected gender and a 
# randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of 
# each Santa using the instance methods that give you access to that data.
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

count = 0
while count < 100
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas.length.times do |i|
  	santas[i].age = Random.new.rand(140)
  end
  count += 1
end

santas.length.times do |i|
  p santas[i].ethnicity
end

santas.length.times do |i|
  p santas[i].age
end

santas.length.times do |i|
  p santas[i].gender
end