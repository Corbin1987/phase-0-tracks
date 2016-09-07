// Corbin Via: DBC Week 9.2 Assignment

// Event Listeners

// Message to be printed to the console
console.log("This script is going to edit some things on the site.");

// Variable declarations
var body = document.getElementById("main-page");

var mainPageHeader = document.getElementById("main-page-header");

var mainPageHeader2 = document.getElementById("main-page-header-2");

var mainPageHeader3 = document.getElementById("main-page-header-3");

var orangeButton = document.getElementById("orange-button");

var redButton = document.getElementById("red-button");

var whiteButton = document.getElementById("white-button");

var purpleButton = document.getElementById("purple-button");

var greenButton = document.getElementById("green-button");

// Function declarations
function addBorder(event) {
	event.target.style.border = "5px solid black";
}

function takeAwayBorder(event) {
	event.target.style.border = "none";
}

function changeColorToRed() {
	body.style.background = "red";
}

function changeColorToWhite() {
	body.style.background = "white";
}

function changeColorToOrange() {
	body.style.background = "orange";
}

function changeColorToPurple() {
	body.style.background = "purple";
}

function changeColorToGreen() {
	body.style.background = "green";
}

// Event listener declarations
mainPageHeader.addEventListener("click", addBorder);

mainPageHeader.addEventListener("dblclick", takeAwayBorder);

mainPageHeader2.addEventListener("click", addBorder);

mainPageHeader2.addEventListener("dblclick", takeAwayBorder);

mainPageHeader3.addEventListener("click", addBorder);

mainPageHeader3.addEventListener("dblclick", takeAwayBorder);

redButton.addEventListener("click", changeColorToRed);

whiteButton.addEventListener("click", changeColorToWhite);

orangeButton.addEventListener("click", changeColorToOrange);

purpleButton.addEventListener("click", changeColorToPurple);

greenButton.addEventListener("click", changeColorToGreen);