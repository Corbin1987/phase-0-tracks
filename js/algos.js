// Corbin Via: DBC Week 7 Solo Challenge

// Release 0: Find the Longest Phrase

// Take array as parameter
// Declare variable for new array to be sorted
// Use .sort method for arrays to sort array (reference from w3schools.com)
// Use function within sort method to sort by length
// Return element of array that is sorted as the longest using the
// length of the original array -1 (the last element in the new array)

function findLongPhrase(arr) {
	var sortedArr = arr.sort(function (a, b) {
  		return a.length - b.length;
		});
	return sortedArr[arr.length-1];
}

// Driver code to test sample arrays

var sampleArray = ["really, really long", "longest", "long", "longer", "really long"];

var sampleArray2 = ["shortest", "short", "shorter"];

var sampleArray3 = ["Godzilla", "Mothra", "King Kong"];

console.log(findLongPhrase(sampleArray));

console.log(findLongPhrase(sampleArray2));

console.log(findLongPhrase(sampleArray3));

// function findLongPhrase2(arr) {
// 	var otherArr = "";
// 	for (var i = 0; i < arr.length; i ++) {
// 		if (arr[i].length > otherArr.length) {
// 			otherArr = arr[i];
// 		}
// 	}
// 	return otherArr;
// }


// Release 1: Find a Key-Value Match
// DO THE THING
// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) 
// If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, 
// because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two 
// objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry 
// about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to 
// reason through the problem using the basics you've already learned, rather than looking up slick search functions that will 
// do the job for you. We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.
function each(coll, f) {
  if (Array.isArray(coll)) {
    for (var i = 0; i < coll.length; i++) {
      f(coll[i], i);
    }
  } else {
    for (var key in coll) {
      f(coll[key], key);
    }
  }
}

function keys(obj) {
  var storage = [];
  each(obj, function(value, key) {
    storage.push(key);
  })
  return storage;
}
​
function values(obj) {
  var storage = [];
  each(obj, function(value) {
  storage.push(value);
  })
  return storage;
}

// function checkKeyValuePairs(obj, obj2) {
// 	each()
// }

console.log(values({name: "Steven", age: 54});

// Release 2: Generate Random Test Data
// Coming up with examples to test our code with can be tiresome. Let's make a function do all the work instead.

// DO THE THING
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if 
// we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual 
// sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 
// 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, 
// but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your 
// "longest word" function, and prints the result.

// You should not begin coding until you have pseudocoded a complete solution to the problem. Leave your pseudocode in your file as comments.

