puts "How many new employees will be processed today?"
number_of_employees = gets.to_i
current_count = 0
while current_count < number_of_employees do
	puts "Welcome to Werewolf Inc. What is your name?"
	name = gets.chomp
	puts "How old are you? What year were you born?"
	age = gets.to_i
	dob = gets.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp
	loop do
		puts "Do you have any allergies?"
		$allergies = gets.chomp
		if $allergies == "sunshine"
		$allergies = true
		break
		end
		if $allergies == "done"
		$allergies = false
		break
		end
	end
	if age <= (2016-dob)
		age = false
	else
		age = true
	end
	if garlic.include? "No"
		garlic = true
	else
		garlic = false
	end
	if insurance.include? "No"
		insurance = true
	else
		insurance = false
	end
	if name.include? "Drake Cula"
		name = true
	elsif name.include? "Tu Fang"
		name = true
	else
		name = false
	end
	if name == true
		puts "Definitely a vampire."
	elsif (age == true) && (garlic == true || insurance == true)
		puts "Probably a vampire."
	elsif (age == true) && (garlic == true && insurance == true)
		puts "Almost certainly a vampire."
	elsif (age == false) && (garlic == false) && (insurance == false)
		puts "Probably not a vampire."
	elsif $allergies == true
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end
	current_count += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."