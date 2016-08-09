Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
Add five items to your array. Print the array.
Delete the item at index 2. Print the array.
Insert a new item at index 2. Print the array.
Remove the first item of the array without having to refer to its index. Print the array.
Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an 
isolated boolean value without any context.)
Initialize another array that already has a few items in it.
Add the two arrays together and store them in a new variable. Print the new array.

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
p "It is #{dr_seuss.include?("Green Eggs and Ham")} that the Dr. Suess array includes Green Eggs and Ham."

thomas_the_train = ["Percy", "Gordon", "Mavis", "Thomas"]

dr_seuss_the_train = thomas_the_train + dr_seuss
p dr_seuss_the_train