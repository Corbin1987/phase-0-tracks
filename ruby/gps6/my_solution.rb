# Virus Predictor

# I worked on this challenge with: Edward Eng.
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative
# The "require_relative" keyword is used to link another file of
# information; in this case, it is used to link the "state_data.rb"
# so that the information does not have to be written out again
# in this file.

require_relative 'state_data'

class VirusPredictor

	# Initialize method
	# Takes parameters of state, density, and population to
	# create a new class instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population_density = population_density
  	@population = population
  end

  	# Virus effects method
  	# Calls the two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Predicted deaths method
  # Run conditional statements based on population density and population
  # in order to determine how many deaths will occur with the outbreak.
  # A higher population density will result in a higher number of deaths from the outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Speed of spread method
  # Runs conditions in order to determine how quickly the outbreak will spread
  # Speed is based on density of population
  # The outbreak will spread more quickly if the population density is higher
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    time = 0.0

    if @population_density >= 200
      time += 0.5
    elsif @population_density >= 150
      time += 1
    elsif @population_density >= 100
      time += 1.5
    elsif @population_density >= 50
      time += 2
    else
      time += 2.5
    end

    puts " and will spread across the state in #{time} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#=======================================================================

# DRIVER CODE

# Create an instance variable for all states and call virus effects method on each state

STATE_DATA.each do |state, state_info|
 temp_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
 temp_state.virus_effects
end

#=======================================================================

# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The hash in the state_data file uses key value pairs in both the main hash and the nested hash.
# However, the outer hash uses "" syntax for keys, whereas the inner hash uses : syntax for the keys.
# The : syntax is used to declare a symbol, which remains unchanging throughout a program. In this
# case, it makes sense to use : syntax for the inner hash keys, as they refer to properties of
# population and population density that all the states share, but with different values.

# What does require_relative do? How is it different from require?

# The "require_relative" keyword is used to link another file of information so that the information 
# does not have to be written out again in this file."Require_relative" is used for files that are 
# related to each other and typically within the same project. "Require" is used for files that may 
# be in different directories but are needed for use in multiple applications.

# What are some ways to iterate through a hash?

# There are multiple ways of iterating through a hash with loops, such as using a loop do {|key, value|}
# syntax or by using a built-in method such as .each, .each_key, or .each_value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# At first I didn't realize that the parameter variables were used in the method elsewhere.
# It then made sense to remove them, and the program worked as it did before. Because the class
# variables were used in the methods, and because of how the methods were written, it then became
# odd to me that they were there in the first place. We also changed the speed variable in the
# speed_of_spread method, since it seemed a bit misleading. Because of how the conditions in the if
# statements were written, I figured that the speed_of_spread and predicted_deaths methods could
# be combined, but it would look a bit clunky.

# What concept did you most solidify in this challenge?

# I feel that I have a better understanding of looping through hashes. My pair and I got stuck on
# Release 5, and we spent a lot of time trying to figure out the correct syntax. When we wrote it
# out correctly, it made a lot more sense to me, and it didn't seem as difficult as when we were
# starting to figure it out.
#