// DBC 7.1 assignment: Syntax

// Function to reverse a string
// Take string as a parameter
// Turn string into an array of letters
// Reverse array
// Turn array into a string
// Return new string

function reverse(str) {
	newStr = str.split("");
	arr = newStr.reverse();
	result = arr.join("");
	return result;
}

// Print information to the terminal
console.log(reverse("hello"));

// Another function to reverse a string
// Take string as a parameter
// Declare new string variable in function
// Loop backwards through the string's indices
// Declare new string equal to each string's 
// indices added together

function reverse2(str) {
	newStr = "";
	for (var i = str.length-1; i >= 0 ; i --) {
		newStr += str[i];
	}
	return newStr;
}

// Print information to the terminal
console.log(reverse2("hello"));

// Code to store result of the function in a variable

var reverseResult = reverse("JavaScript")

console.log(reverseResult)

var reverseResult2 = reverse2("Ruby")

console.log(reverseResult2)

// Code to print the variable if some condition is true