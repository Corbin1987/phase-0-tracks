# encrypt: .next for each letter in the string
# loop for going through each index of the string
# index should be set as 0 and then increased to the length of the string

#decrypt: reverses the process of encrypt

def encrypt(str)
   index = 0
   while index < str.length
       str[index] = str[index].next 
       index += 1
   end
   p str
end

encrypt("abc")