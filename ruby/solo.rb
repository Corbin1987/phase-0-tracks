# at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
# at least three methods, at least one of which takes an argument
# Pseudocode your design as comments in phase-0-tracks/ruby/solo.rb.
# In the same file as your design, implement your class. When you're not sure how to implement a behavior 
# (how the heck do we make a dragon breathe fire?), you might consider a simple printout of what's going on. 

# Your class should ...

# Use attr_reader and attr_accessor
# Use an initialize method that sets at least one attribute
# Feel free to tweak your original design if needed to make this possible.

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
# Methods: change armor rating, add/delete weapons, add/delete skills
# Armor rating will be set at default value of 1
# Add/delete weapons will take an argument
# Maximum amount of weapons will be three
# Add/delete skills will take an argument
# Maximum amount of skills will be five

class Warrior
	attr_reader :location
	attr_accessor :armor, :weapons, :skills

	def initialize(armor, weapons, skills)
		@armor = 1
		@weapons = []
		@skills = []
	end

	def add_weapon(weapon)
		@weapons << weapon
		@weapons
	end

	def delete_weapon(weapon)
		@weapons.delete(weapon)
end