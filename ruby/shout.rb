module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
  	"OMG hahaha! " + words
  end
end

Shout.yell_angrily("NO")
# => "NO!!! :("


Shout.yelling_happily("Yay!")
# => "OMG hahaha! Yay!"