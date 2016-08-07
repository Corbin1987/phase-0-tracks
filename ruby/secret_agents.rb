# encrypt: .next for each letter in the string
# loop for going through each index of the string
# index should be set as 0 and then increased to the length of the string

#decrypt: reverses the process of encrypt

def encrypt(str)
   index = 0
   while index < str.length
      if str[index] = "z"
       	str[index] = "a"
       	break
       end
       str[index] = str[index].next 
       index += 1
   end
   p str
end

def decrypt(str)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < str.length
       num = alphabet.index(str[index]) 
       str[index] = alphabet[num-1]
       index += 1
   end
   p str
end

encrypt("abc") #should return "bcd"
encrypt("zed") #should return "afe"
decrypt("bcd") #should return "abc"
decrypt("afe") #should return "zed"