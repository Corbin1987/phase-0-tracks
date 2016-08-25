# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The "require_relative" keyword is used to link another file of
# information; in this case, it is used to link the "state_data.rb"
# so that the information does not have to be written out again
# in this file. "Require_relative" is used for files that are
# related to each other and typically within the same project.
# "Require" is used for files that may be in different directories
# but may be needed for use in multiple applications.

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

#========================================================================

# DRIVER CODE

# Create an instance variable for all states and call virus effects method on each state

STATE_DATA.each do |state, state_info|
 temp_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
 temp_state.virus_effects
end

#=======================================================================
# Reflection Section