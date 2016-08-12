#Ask for favorite movies.
puts "What are two of your favorite movies?"
movie1 = gets.chomp
movie2 = gets.chomp
#Passes status message prior to block.
puts movie1
puts movie2
#Define method with yield.
def movie_critic
	puts "I've seen both of those movies."
	yield
end
#Begin code block.
movie_critic { puts "#{movie1} is great, but #{movie2} is crappy."}
#Define an array.
movie_array = ["The Nightmare Before Christmas", "Fantastic Mr. Fox", "Chicken Run", "Coraline"]
#Define a hash.
movie_characters = {
	"The Force Awakens" => "Rey",
	"Interstellar" => "Cooper",
	"Mission: Impossible" => "Ethan Hunt",
	"Gladiator" => "Maximus"
}
#Print original data prior to code block.
puts "Original array data:"
p movie_array
#Calling each item from array.
movie_array.each do |movie|
	puts "#{movie} is a clay-mation movie."	
end
#Print original data of hash prior to code block.
puts "Original hash data:"
p movie_characters
#Calling key-value pairs of hash.
movie_characters.each do |title, character|
	puts "#{character} is the main character of #{title}."
end
#Permanently modify array.
movie_array.map! do |movie|
	puts movie
	movie.swapcase
end
#Printing array after .map!
puts "After .map call"
p movie_array
#Calling array for Release 2
movie_array = ["The Nightmare Before Christmas", "Fantastic Mr. Fox", "Chicken Run", "Coraline"]
#Delete array item for condition met.
movie_array.delete_if {|movie| movie.length <= 8}
p movie_array
#Filter array item for condition met.
movie_array.keep_if {|movie| movie.length > 15}
p movie_array

movie_array.select! {|movie| movie.include?("x")}
p movie_array
#Redefine array for drop_while execution.
movie_array = ["The Nightmare Before Christmas", "Fantastic Mr. Fox", "Chicken Run", "Coraline"]

movie_array.drop_while {|movie| movie.length > 15}
#Calling hash for Release 2.
movie_characters = {
	"The Force Awakens" => "Rey",
	"Interstellar" => "Cooper",
	"Mission: Impossible" => "Ethan Hunt",
	"Gladiator" => "Maximus"
}
#Delete hash item for condition met.
movie_characters.delete_if {|title, character| title.length < 12}
p movie_characters
#Filter hash item for condition met.
movie_characters.keep_if {|title, character| title.length == 12}
p movie_characters
#Redefine array for .select!
movie_characters = {
	"The Force Awakens" => "Rey",
	"Interstellar" => "Cooper",
	"Mission: Impossible" => "Ethan Hunt",
	"Gladiator" => "Maximus"
}

movie_characters.select! {|title, character| character == "Rey"}
p movie_characters
#Check hash for value input.
movie_characters.has_value? ("Rey")