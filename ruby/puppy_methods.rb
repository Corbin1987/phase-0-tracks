class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
  	response = "Woof " * number
  	puts response.lstrip
  end
  
  def roll_over
  	puts "*rolls over*"
  end
  
  def dog_years(human_years)
  	dog_age = human_years * 7
  	puts dog_age
  end
  
  def handshake
  	puts "*shakes paw*"
  end
  
  def initialize
  	puts "Initializing new puppy instance ..."
  end
  
end

sparky = Puppy.new

sparky.fetch("frisbee")
sparky.speak(3)
sparky.roll_over
sparky.dog_years(5)
sparky.handshake

class Car
	
	def initialize
		puts "Initializing new car instance..."
	end
	
	def zero_to_sixty(seconds)
		puts "I go from 0 - 60 in #{seconds} seconds!"
	end
	
	def oil_change
		puts "I need an oil change."
	end
	
end

cars = []

count = 0

while count <= 50
	honda = Car.new
	count += 1
	cars.push(honda)
end

cars.each do
	honda.zero_to_sixty(8)
	honda.oil_change
end