#In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") 
#and creates a fake name with it by doing the following:

# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
# If you get really and truly stuck, just write an alias method that loops through the original name and 
# changes the letters somehow, without worrying about implementing this particular algorithm. 
# It's really not worth stressing about. Simply attempting the algorithm will help you improve, even if you didn't quite get there.

# This is the most complex algorithm you've had to write, and the toughest release of this challenge. 
# How will you break it down into manageable pieces? Try to identify all of the mini-challenges 
# and considerations that show up in your algorithm, such as

# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?
# You may find it helpful to write additional methods -- one for each job -- and then combine them. 
# It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method that takes a vowel 
# character and returns the next vowel character. Once you know that small piece works because you've tested it with a few different vowels, 
# you can use it in your program and trust that it's unlikely to be the source of any bugs that come up. This is a great way to make steady progress.

# If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. 
# Luckily, our dearest Vussit is from a country no one has ever heard of, mainly because it doesn't really exist.
# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until 
# they decide to quit by typing 'quit'. (They might just hit Enter to continue.)Use a data structure to store the fake names as they are entered. 
# When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is 
# actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
# # Submit the GitHub URL of your Ruby file to complete this challenge. Request your code review using this form (Links to an external site.).

# Swap the first and last name.

name to array
reverse array
letters = "Felicia Torres".split(' ')
letters.reverse!
p letters
new_letters = letters.join(' ')
p new_letters
new_new_letters = new_letters.split('')
p new_new_letters
new_new_letters.map!  do |letter|
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
	elsif letter == "z"
	letter = "b"
	elsif letter == "d"
	letter = "f"
	elsif letter == "h"
	letter = "j"
	elsif letter == "n"
	letter = "p"
	elsif letter == "t"
	letter = "v"
else letter = letter.next
end
end
#abcdefghijklmnopqrstuvwxyz
even_newer = new_new_letters.join ('')
even_newer.capitalize!
