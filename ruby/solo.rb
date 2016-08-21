# Pseudocode

# Class will be a warrior creator
# Attributes: location, name, armor, weapon
# Location: read-only attribute
# Armor: numerical rating
# Weapons: any value (strings)
# Skills: any value (strings)
# Methods: engage in battle, attack, defend
# Engage in battle will reset location to where warrior is fighting
# Attack will take argument of weapon to use
# Defend will print message to user

class Warrior
	attr_reader :location
	attr_accessor :name, :armor, :weapon

	def initialize(name)
		@name = name
		@armor = armor
		@weapon = weapon
	end
	
	def engage(location)
		@location = location
		p "Your warrior has engaged the enemy in #{location}."
	end
	
	def attack(weapon)
		p "Your warrior attacked the enemy with a warrior #{weapon}!"
	end
	
	def defend
		p "Your warrior has defended the enemy's attack."
	end
end

puts "Welcome to Warrior Creator."
entries = []
user_info = {}

loop do
puts "Please enter a name for your warrior."
user_name = gets.chomp
user_info["Name"] = "#{user_name}"
user_name = Warrior.new(user_name)

puts "Set an armor rating for your warrior."
armor_rating = gets.to_i
user_info["Armor"] = "#{armor_rating}"
user_name.armor=(armor_rating)
puts "Your warrior has an armor rating of #{user_name.armor}."

puts "Add a weapon for your warrior."
user_weapon = gets.chomp
user_info["Weapon"] = "#{user_weapon}"
user_name.weapon=(user_weapon)
p "Your warrior wields the #{user_name.weapon}."


puts "Where would you like to engage your warrior?"
user_location = gets.chomp
user_info["Location"] = "#{user_location}"
user_name.engage(user_location)

puts "Attack the enemy?"
user_attack = gets.chomp.downcase
if user_attack == "no"
	user_name.defend
else
	user_name.attack(user_weapon)
end

entries.push(user_info)

puts "Would you like to create another warrior?"
create_new = gets.chomp.downcase
break if create_new == "no"

end


p entries