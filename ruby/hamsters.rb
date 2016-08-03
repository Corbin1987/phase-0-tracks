puts "What is the name of the hamster?"
	name = gets.chomp
puts "How loud is the hamster (1-10)?"
	volume = gets.to_i
puts "What color is the hamster's fur?"
	fur = gets.chomp
puts "Is the hamster a good candidate for adoption?"
	adoption = gets.chomp
if adoption.include? "Yes"
	adoption = true
elsif adoption.include? "Sure"
	adoption = true
else
	adoption = false
end
puts "What is the hamster's estimated age?"
age = gets.chomp
if age == ""
	age = nil
else
	age = age.to_i
end
puts "The hamster's name is #{name}."
puts "The hamster is at a volume level of #{volume}."
puts "The hamster's fur is #{color}."
if adoption == true
	puts "The hamster is a good candidate for adoption."
else
	puts "The hamster is not a good candidate for adoption."
end
if age != nil
	puts "The hamster is #{age} years old."
else
	puts "The age of this hamster is unknown."
end