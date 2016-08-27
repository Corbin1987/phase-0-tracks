// Corbin Via: DBC Week 7 Solo Challenge

// Release 0: Find the Longest Phrase

// First method
// Take array as parameter
// Declare variable for new array to be sorted
// Use .sort method for arrays to sort array
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

// Second method
// Take array as parameter
// Declare variable for new string
// Use for loop to loop through indices of array
// Check length of array's indices with for loop
// Compare length of array's elements to new string length
// If length of array's elements are longer than new string length,
// add the element as the variable for new string
// Repeat process with for loop until the longest element is found
// Return new string which is now the longest element

function findLongPhrase2(arr) {
	var newStr = "";
 	for (var i = 0; i < arr.length; i ++) {
		if (arr[i].length > newStr.length) {
			newStr = arr[i]; 		
		} 	
	}
 	return newStr;
}

// Driver code to test second method

console.log(findLongPhrase2(sampleArray));

console.log(findLongPhrase2(sampleArray2));

console.log(findLongPhrase2(sampleArray3));


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

// Editor's note: I might have gotten a bit overzealous on this because
// I remembered the each function from my JavaScript prep course (a class
// I took in May this year) and felt that it could be useful here. 
// I incorporated each into other functions and then those were put into 
// a final function to check key-value pairs.

// The each function!
// Take parameters of a collection (either an array or an object) and another function
// First condition: check to see if the collection is an array with Array.isArray()
// If the collection is an array, use a for loop to loop through elements of array
// New function 'f' will work on array element at array index
// Else condition: if collection is an object of key-value pairs
// If collection is an object, use for loop to loop through keys of object
// New function f will work on object value at object key
// Each can be incorporated into other functions

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

// Function to store keys of an object
// Take object as parameter
// Declare storage array as a variable
// Use each function to iterate through object's keys
// Use .push to get object's keys into new storage array
// Return storage array of object keys

function keys(obj) {
	var storage = [];
	each(obj, function(value, key) {
		storage.push(key);
	});
	return storage;
}

// Function to store values of an object
// Take object as parameter
// Declare storage array as a variable
// Use each function to iterate through object's keys
// Use .push to get object's values into new storage array
// Return storage array of object values

function values(obj) {
  var storage = [];
  each(obj, function(value, key) {
  storage.push(value);
  });
  return storage;
}

// Function to compare keys and values
// Take two parameters of objects
// Declare variables of compared objects equal to function call of keys
// Declare variables of other compared objects equal to function call of values
// Since function keys and function values return arrays, loop through array
// using for loop to compare each element of new arrays
// Run array elements through conditional statements if either keys or values
// match in objects declared as arguments to function

function keyOrValueMatch(obj, obj2) {
	var comparedObj = keys(obj);
	var comparedObj2 = keys(obj2);
	var otherComparedObj = values(obj);
	var otherComparedObj2 = values(obj2);
	for (var i = 0; i < comparedObj.length; i ++) {
		if (comparedObj[i] === comparedObj2[i]) {
			return true;
		} else if (otherComparedObj[i] === otherComparedObj2[i]) {
			return true;
		} else {
			return false;
		}
	}
}

// Driver code for Release 1

console.log(keys({name: "Steven", age: 54}));

console.log(keys({name: "Tamir", age: 54}));

console.log(values({name: "Steven", age: 54}));

console.log(values({name: "Tamir", age: 54}));

console.log(keyOrValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));

console.log(keyOrValueMatch({name: "Corbin", age: 29}, {nickname: "Tamir", years: 54}));

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

// Take integer as parameter
// Declare variable of new array
// Set amount of words equal to integer
// Declare random words to be used in array
// Use while loop to set condition of counter
// Increase counter
// Push random words into array
// Return array

function randomTestData(num) {
	var newArr = [];
	var wordsAmount = num;
	var count = 0;
	while count <= num {
		var randomNum = Math.random();
		var newNum = randomNum * 10;
		var charNum = Math.ceil(newnum);
		newWord.length = charNum;
		
		newArr.push(newWord);
	}
	return newArr;
}