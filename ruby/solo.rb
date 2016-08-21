# Modify your program so that it has a user interface 
# (a user can interact with your program via the command line).
# Your user should be allowed to create as many instances of your class as they like.
# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. 
# Store these class instances in an array.
# When the user indicates that they are finished creating instances, 
# loop through the array and print out the attributes of each instance as a confirmation message of what was created.


# Pseudocode

# Class will be a warrior creator
# Attributes: location, armor, weapons, skills
# Location: read-only attribute
# Armor: rating 1-10
# Weapons: any value (strings)
# Skills: any value (strings)
# Methods: change armor rating, add/delete weapons, add/delete skills, engage in battle
# Armor rating will be set at default value of 1
# Add/delete weapons will take an argument
# Maximum amount of weapons will be three
# Add/delete skills will take an argument
# Maximum amount of skills will be five
# Engage in battle will reset location to where warrior is fighting

class Warrior
	attr_reader :location
	attr_accessor :armor, :weapons, :skills

	def initialize #(armor=1, weapons, skills)
		@armor = armor
		@weapons = []
		@skills = []
	end

	# def change_armor(number)
	# 	@armor = number
	# end

	def add_weapon(weapon)
		@weapons << weapon
		@weapons
	end

	def delete_weapon(weapon)
		@weapons.delete(weapon)
		@weapons
	end

	def add_skill(skill)
		@skills << skill
		@skills
	end

	def delete_skill(skill)
		@skills.delete(skill)
		@skills
	end

	def engage(location)
		@location = location
		p "Your warrior has engaged the enemy at #{location}."
	end
end

puts "Welcome to Warrior Creator. Please enter a name for your warrior."
name = gets.chomp
name = Warrior.new

puts "Set an armor rating for your warrior."
armor_rating = gets.chomp

if armor_rating <= 10
	name.armor=(armor_rating)
	puts "Your warrior has an armor rating of #{@armor}."
elsif armor_rating >=11
	puts "Sorry, you can't have armor that heavy."
else
	puts "Invalid input. Please enter a number from 1 to 10."
end