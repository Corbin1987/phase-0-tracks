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