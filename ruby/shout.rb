# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#   	"OMG hahaha! " + words
#   end
# end

# Shout.yell_angrily("NO")
# => "NO!!! :("


# Shout.yelling_happily("Yay!")
# => "OMG hahaha! Yay!"

module Shout
	def yell(words)
		words + "!! @$&*^!"
	end

	def celebrate(words)
		"WOW! :) " + words
	end

	def i_wanna_shout
		p "You know you make me wanna SHOUT! Wooo!" 	
	end 
end

class Adult
	include Shout
end

class Toddler
	include Shout
end

Trevor = Adult.new
Trevor.yell("Argh why?")
# => "Argh why?!! @$&*^!"

Trevor.celebrate("I'm so happy!")
# => "WOW! :) I'm so happy!"

Gina = Toddler.new
Gina.yell("Where's my apple juice?")
# => "Where's my apple juice?!! @$&*^!"

Gina.celebrate("I love playing in the sandbox!")
# => "WOW! :) I love playing in the sandbox!"

Gina.i_wanna_shout
# => "You know you make me wanna SHOUT! Wooo!"