# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(-2, "o")
"zom".insert(1, "o")
# => “zoom”

"enhance".center (4)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat " suspects"
"the usual".insert(-1, " suspects")
#=> "the usual suspects"

" suspects".replace "the usual suspects"
" suspects".insert(0, "the usual")
" suspects".prepend "the usual"
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
"The mystery of the missing first letter".slice(1, 38)
"The mystery of the missing first letter"[1, 38]
"The mystery of the missing first letter"[1..38]
"The mystery of the missing first letter".byteslice(1..38)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze (" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# "z".ord returns 122 because it is considered 122 in relation to other characters. For instance, "a".ord returns 97, 
# "b".ord returns 98, "c".ord returns 99, etc. 97-122 comprise the letters of the alphabet, shifted from their usual 
# ordinal sequence of 1-26. Other characters such as "!" comprise other values in this sequence: "!".ord returns 33, 
# "@".ord returns 64, "*".ord returns 42, etc.

"How many times does the letter 'a' appear in this string?".count "a"
# => 4