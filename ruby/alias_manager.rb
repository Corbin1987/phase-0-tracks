# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
# If you get really and truly stuck, just write an alias method that loops through the original name and 
# changes the letters somehow, without worrying about implementing this particular algorithm. 
# It's really not worth stressing about. Simply attempting the algorithm will help you improve, even if you didn't quite get there.

# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?
# You may find it helpful to write additional methods -- one for each job -- and then combine them. 
# It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method that takes a vowel 
# character and returns the next vowel character. Once you know that small piece works because you've tested it with a few different vowels, 
# you can use it in your program and trust that it's unlikely to be the source of any bugs that come up. This is a great way to make steady progress.

# If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. 
# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until 
# they decide to quit by typing 'quit'. (They might just hit Enter to continue.)Use a data structure to store the fake names as they are entered. 
# When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is 
# actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
# # Submit the GitHub URL of your Ruby file to complete this challenge. Request your code review using this form (Links to an external site.).

def spy_alias(name)
	name = name.split(' ')
	name.reverse!
	reversed_name = name.join(' ').downcase
	array_name = reversed_name.split('')
	array_name.map!  do |letter|
		if letter == " "
			letter = " "
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
		elsif letter == "d"
			letter = "f"
		elsif letter == "h"
			letter = "j"
		elsif letter == "n"
			letter = "p"
		elsif letter == "t"
			letter = "v"
		elsif letter == "z"
			letter = "a"
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
		elsif letter == "D"
			letter = "F"
		elsif letter == "H"
			letter = "J"
		elsif letter == "N"
			letter = "P"
		elsif letter == "T"
			letter = "V"
		elsif letter == "Z"
			letter = "A"
		else letter = letter.next
		end
	end
result = array_name.join ('')
end

names_hash = {}
user_input = nil
spy_name = nil

loop do
	puts "Please enter a name to change. Enter 'q' to exit the program."
	user_input = gets.chomp
	break if user_input == 'q'
	spy_name = spy_alias(user_input)
	names_hash[user_input.to_sym] = "#{spy_name}"
	puts spy_name
end

names_hash.each {|user_input, spy_name| p "#{user_input} is known as #{spy_name}."}