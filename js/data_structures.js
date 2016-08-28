// Corbin Via: DBC Week 7.2 Data Structures

//In your new file, declare two separate arrays:
// an array of four colors ("blue", for instance, though you're welcome to get crazy with something like "iridescent blue/green with silver sparkles")
// an array of four names that you might give a horse ("Ed" is always a solid choice to start with)
// Write additional code that adds another color to the colors array, and another horse name to the horses array.

// Release 0

var colorsArray = ["blue", "red", "green", "yellow"];

var namesArray = ["Mr. Ed", "Flash Lightning", "Corbin", "Marvan"];

colorsArray.push("purple");

console.log(colorsArray);

namesArray.push("Ed Junior");

console.log(namesArray);

// We need to assign colors to horses. In data_structures.js, add code that will use your two arrays to create an object. 
// The keys of your object should be horse names, and the values should be colors. Your solution should be something that would 
// work for any number of colors/horses, as long as the two arrays are the same length. This is a logical reasoning step -- 
// try to think it through instead of Googling it.

function addArrays(arr1, arr2) {
	var newObj = {};
	if (arr1.length === arr2.length) {
		for (var i = 0; i < arr1.length; i ++) {
			newObj[arr1[i]] = arr2[i];
		}
	} else {
		console.log("The two arrays are not equal in length.");
	}
	return newObj;
}

console.log(addArrays(namesArray, colorsArray));

// Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. 
// At the bottom of your data_structures.js file, write a constructor function for a car. Give it a few different properties of various data types, 
// including at least one function. Demonstrate that your function works by creating a few cars with it.

function Car(make, model, year) {
	this.make = make;
	this.model = model;
	this.year = year;
	console.log("Our new car:", this);
	this.honk = function() {
		console.log("*Honk*");
	}
}

var marvansCar = new Car("VW", "GTI", 2012);

console.log(marvansCar);

marvansCar.honk();

var corbinsCar = new Car("Honda", "CR-V", 2003);

console.log(corbinsCar);

corbinsCar.honk();

var otherCar = new Car("MINI", "Cooper", 2016);

console.log(otherCar);

otherCar.honk();