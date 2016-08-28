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
// Take integer as parameter
// Declare variable of new array as blank array
// Declare counter variable set at 0
// Use while loop to set condition of counter less than integer
// Declare random number with Math.random
// Multiply random number by 10 and set as new variable newNum
// Declare character amount as variable equal to newNum rounded up
// Character amount will be between 1 - 10 characters
// Declare newWord equal to empty string
// Declare variable of possible text
// Use for loop to loop through possibleText
// For loop will stop when it is equal to amount of characters
// In for loop, make newWord equal to any of the characters in possible text
// Use charAt to select a character in possible text that is randomly generated
// Push newWord into array
// Increase counter
// Return array

function randomTestData(num) {
	var newArr = [];
	var count = 0;
	while (count < num) {
		var randomNum = Math.random() * 10;
		var charNum = Math.ceil(randomNum);
		var newWord = '';
		var possibleText = 'abcdefghijklmnopqrstuvwxyz';
		for (var i = 0; i <= charNum; i ++) {
			newWord += possibleText.charAt(Math.floor(Math.random() * possibleText.length));
		}
		newArr.push(newWord);
		count ++;
	}
	return newArr;
}

// Driver code for Release 2

var counter = 0;
while (counter < 10) {
	var randomNum = Math.random() * 10;
	var arrayNum = Math.ceil(randomNum);
	var testVariable = randomTestData(arrayNum);
	console.log(testVariable);
	console.log(findLongPhrase2(testVariable));
	counter ++;
}
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your 
// "longest word" function, and prints the result.
