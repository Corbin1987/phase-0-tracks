# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(list_str)
	# declare initial list with empty hash
	grocery_hash = {}
	# split string .split with ' ' (space) as argument
	list_arr = list_str.split(' ')
	# store string elements in array
	list_arr.each do |item|
	# iterate over array and add each item to a hash
	# set item to 1 if it's not already in the hash
	# if item already exists, don't add to hash
		if !grocery_hash.has_key?(item)
			grocery_hash[item] = 1
		else
			grocery_hash[item] += 1
		end
	end
	# output: return the hash
	grocery_hash
end

# Method to add an item to a list/update the quantity of an item

# input: item, quantity (set to a default value of 1 if not entered), hash(grocery list)
def add_item(item, quantity=1, hash)
# get item name and quantity
# if there's no quantity, set it to 1
	hash[item] = quantity
	# output: return the hash with updated key/value pairs
	hash
end

# Method to remove an item from the list

# input: item name and hash
def delete_item(item, hash)
# get item name
	if hash.has_key?(item)
	# if item is in hash, delete the item from hash
		hash.delete(item)
	else
	# otherwise send error message if item is not in hash
		p "#{item} is not in your grocery list."
	end
	# output: return the hash
	hash
end

# declare variable to call method create_list
grocery_list = create_list

# Method to print a list and make it look pretty

# input: grocery list created from create_list method
def print_grocery_list(grocery_list)   
	# create title and line break
	puts "Current grocery list:"
	puts "----------"
	# iterate through hash
	grocery_list.each do |item, quantity|
		# print each item with its quantity
		puts "#{item}: #{quantity}"
	end
	# create line break for readability
	puts "----------"
end

# Reflections:
# What did you learn about pseudocode from working on this challenge?
	# I wasn't always accustomed to the idea of psuedocoding, but I am
	# finding it more and more helpful as I code. Psuedocoding allows a
	# programmer to give an outline for what methods should do. When
	# it is added as comments, it creates more readability in code by
	# giving explanations to methods.
# What are the tradeoffs of using arrays and hashes for this challenge?
	# An array could be used for this challenge, but it wouldn't be
	# able to show quantities of items as well. I feel that using an
	# array might have created more code (ie, one array for items, 
	# another for item quantities). I liked that my pair and I decided
	# on a hash because the key-value pairs could correspond to items
	# and item quantities in pairs. We also created a "pretty print"
	# method that displays the hash in a more readable view.
# What does a method return?
	# A method returns its last line of code, if it is declared. A 
	# method in Ruby does not need a return statement, as Ruby has
	# an "implicit return" by which the last line of code in a method
	# is returned by default.
# What kind of things can you pass into methods as arguments?
	# It seems that almost any type of argument can be passed into a
	# method, whether it is a string, integer, float, boolean value,
	# or even another method.
# How can you pass information between methods?
	# Information can be passed between methods with variables set
	# outside the method scope, or by referencing another method
	# inside of a method (ie, by using a previous method as an
	# argument in the following method).
# What concepts were solidified in this challenge, and what 
# concepts are still confusing?
	# I felt that making different methods for each job in a program
	# was made more understandable with this challenge. I have seen
	# examples of it, but this is one of the first times that I have
	# done my own coding in this way. I also felt that the example
	# in this challenge, as well as the explanations, made this a 
	# good start for making many different methods. Although a user
	# interface was not part of this challenge, I am sometimes still
	# confused by how to link the user input with data storage.