# Business Logic

def spy_alias(name) #Felicia Torres
	name = name.split(' ') # => ["Felicia", "Torres"]
	name.reverse! # => ["Torres", "Felicia"] 
	reversed_name = name.join(' ') # =>"Torres Felicia"
	array_name = reversed_name.split('') # => ["T", "o", "r", "r", "e", "s", " ", "F", "e", "l", "i", "c", "i", "a"]
	array_name.map!  do |letter|
		# Edge case
		if letter == " "
			letter = " "
		# Conditions for vowels	
		elsif letter == "a"
			letter = "e"
		elsif letter == "e"
			letter = "i"
		elsif letter == "i"
			letter = "o"
		elsif letter == "o"
			letter = "u"
		elsif letter == "u" 
			letter = "a"
		# Conditions for consonants skipping vowels
		elsif letter == "d"
			letter = "f"
		elsif letter == "h"
			letter = "j"
		elsif letter == "n"
			letter = "p"
		elsif letter == "t"
			letter = "v"
		# Edge case
		elsif letter == "z"
			letter = "a"
		# Conditions for uppercase vowels
		elsif letter == "A"
			letter = "E"
		elsif letter == "E"
			letter = "I"
		elsif letter == "I"
			letter = "O"
		elsif letter == "O"
			letter = "U"
		elsif letter == "U" 
			letter = "A"
		# Conditions for uppercase consonants skipping vowels
		elsif letter == "D"
			letter = "F"
		elsif letter == "H"
			letter = "J"
		elsif letter == "N"
			letter = "P"
		elsif letter == "T"
			letter = "V"
		# Edge case
		elsif letter == "Z"
			letter = "A"
		# All other letters
		else letter = letter.next
		end
	end
# =>["V", "u", "s", "s", "i", "t", " ", "G", "i", "m", "o", "d", "o", "e"]
result = array_name.join ('')
# => "Vussit Gimodoe"
end

#Declare variables for data storage and later output
names_hash = {}
user_input = nil
spy_name = nil

#User interface

loop do
	puts "Please enter a name to change. Enter 'q' to exit the program."
	user_input = gets.chomp
	break if user_input == 'q'
	spy_name = spy_alias(user_input)
	# Data storage
	names_hash[user_input.to_sym] = "#{spy_name}"
	# Output
	puts spy_name # => Vussit Gimodoe"
end

# Final data output

names_hash.each {|user_input, spy_name| p "#{user_input} has a spy name of: #{spy_name}."}