# in phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details of a given client: 
# the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" 
# formatting are needed (as in the case of using someone's full name as a hash key). basically, symbols are simpler for programmers to use,
#  and readable enough by technical folks to be used in place of strings most of the time.

# your program should ...

# prompt the designer/user for all of this information.
# convert any user input to the appropriate data type.
# print the hash back out to the screen when the designer has answered all of the questions.
# give the user the opportunity to update a key (no need to loop, once is fine). after all, sometimes users make mistakes! 
# if the designer says "none", skip it. but if the designer enters "decor_theme" (for example), your program should ask for a new value and 
# update the :decor_theme key. (hint: strings have methods that will turn them into symbols, which would be quite handy here.) 
# you can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# print the latest version of the hash, and exit the program.
# be sure to pseudocode, and leave your pseudocode in as comments.

#Create hash for interior design client
client = {
		# name: "", 
		# age: "", 
		# number_of_rooms: "", 
		# children?: "", 
		# decor_theme: "", 
		# favorite_color: "", 
		# furniture_in_room?: "", 
		# room_lighting: "",
		# pets?: ""
	}
#Welcome message
puts "Welcome interior designer! Please input information about your new client. For any output with a question mark, please enter true/false."

puts "Name:"
name = gets.chomp
client[:name] = name

puts "Age:"
age = gets.chomp
client[:age] = age

puts "Number of rooms:"
rooms = gets.chomp
client[:number_of_rooms] = rooms

puts "Children?"
user_input4 = gets.chomp
client[:children?] = user_input4
	puts "Decor theme:"
	user_input5 = gets.chomp
	client[:decor_theme] = user_input5
	puts "Favorite color:"
	user_input6 = gets.chomp
	client[:favorite_color] = user_input6
	puts "Furniture in room?"
	user_input7 = gets.chomp
	client[:furniture_in_room?] = user_input7
	puts "Room lighting:"
	user_input8 = gets.chomp
	client[:room_lighting] = user_input8
	puts "Pets?"
	user_input9 = gets.chomp
	client[:pets?] = user_input9
#Ask for any edits
