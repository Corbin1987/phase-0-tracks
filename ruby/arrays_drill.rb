# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
# Add five items to your array. Print the array.
# Delete the item at index 2. Print the array.
# Insert a new item at index 2. Print the array.
# Remove the first item of the array without having to refer to its index. Print the array.
# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an 
# isolated boolean value without any context.)
# Initialize another array that already has a few items in it.
# Add the two arrays together and store them in a new variable. Print the new array.
# At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) 
# would return [1, "two", nil]. 
# This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works.
# At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. 
# So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3]. 
# Print a few test calls of the method.

def build_array(element1, element2, element3)
	new_array = [element1, element2, element3]
end

def add_to_array(array, item)
	new_array = array.push(item)
end

dr_seuss = []
p dr_seuss
dr_seuss.insert(0, "Oh the places you'll go!", "Cat in the Hat", "Fox in Socks", "One Fish, Two Fish", "Green Eggs and Ham")
p dr_seuss
dr_seuss.delete_at(2)
p dr_seuss
dr_seuss.insert(2, "Wacky Wednesday")
p dr_seuss
dr_seuss.shift
p dr_seuss
p "It is #{dr_seuss.include?("Green Eggs and Ham")} that the Dr. Seuss array includes Green Eggs and Ham."

thomas_the_train = ["Percy", "Gordon", "Mavis", "Thomas"]

dr_seuss_the_train = thomas_the_train + dr_seuss
p dr_seuss_the_train

build_array(1, 2, 3)
#=> [1, 2, 3]

add_to_array([1, 2, 3], 4)
#=> [1, 2, 3, 4]

add_to_array(thomas_the_train, "Emily")
#=> ["Percy", "Gordon", "Mavis", "Thomas", "Emily"]

add_to_array(dr_seuss, "Hop on Pop")
#=> ["Oh the places you'll go!", "Cat in the Hat", "Fox in Socks", "One Fish, Two Fish", "Green Eggs and Ham", "Hop on Pop"]