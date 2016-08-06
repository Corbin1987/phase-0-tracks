def vampire_test
	puts "Welcome to Werewolf Inc. What is your name?"
	name = gets.chomp
	puts "How old are you? What year were you born?"
	age = gets.to_i
	puts = "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp
	if age <= (2016-age)
		age = true
	else
		age = false
	end
	if garlic.include? "Yes"
		garlic = true
	elsif garlic.include? "Sure"
		garlic = true
	else
		garlic = false
	end
	if insurance == "Yes"
		insurance = true
	else
		insurance = false
	end
	if age && (garlic || insurance)
		puts "Probably not a vampire."
	elsif !age && ( !garlic || !insurance)
		puts "Probably a vampire."
	elsif !age && !garlic && !insurance
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive"
	end
end

#Match the following conditions in the order they're listed. Your program should base its result on the latest condition matched, not the first condition matched. 
#In other words, it's not a "only one condition will apply" sort of scenario. 
#This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result.

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. 
#In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”
#Print the result at the end of the survey.