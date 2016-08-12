puts "What are two of your favorite movies?"
movie1 = gets.chomp
movie2 = gets.chomp

def movie_critic
	puts "I've seen both of those movies."
	yield
end

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

movie_array.map! do |movie|
	puts movie
	movie.swapcase
end

puts "After .map call"
p movie_array

movie_array = ["The Nightmare Before Christmas", "Fantastic Mr. Fox", "Chicken Run", "Coraline"]

movie_array.delete_if {|movie| movie.length <= 8}
p movie_array

movie_array.keep_if {|movie| movie.length > 15}
p movie_array

movie_array.select! {|movie| movie.include?("x")}
p movie_array

movie_array = ["The Nightmare Before Christmas", "Fantastic Mr. Fox", "Chicken Run", "Coraline"]

movie_array.drop_while {|movie| movie.length > 15}
# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops 
# (you may not find a perfectly working option for the hash, and that's okay).