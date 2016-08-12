puts "What are two of your favorite movies?"
movie1 = gets.chomp
movie2 = gets.chomp

def movie_critic
	puts "I've seen both of those movies."
	yield
end

movie_critic { puts "#{movie1} is great, but #{movie2} is crappy."}

