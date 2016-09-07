// Corbin Via: DBC Week 9.2 Assignment

// Event Listeners

console.log("This script is going to edit some things on the site.");

function addBorder(event) {
	event.target.style.border = "5px solid black";
}

function takeAwayBorder(event) {
	event.target.style.border = "none";
}

function changeColorToRed() {
	var body = document.getElementById("main-page");
	body.style.background = "red";
}

function changeColorToWhite() {
	var body = document.getElementById("main-page");
	body.style.background = "white";
}

function changeColorToOrange() {
	var body = document.getElementById("main-page");
	body.style.background = "orange";
}

var mainPageHeader = document.getElementById("main-page-header");
var mainPageHeader2 = document.getElementById("main-page-header-2");
var mainPageHeader3 = document.getElementById("main-page-header-3");

mainPageHeader.addEventListener("click", addBorder);
mainPageHeader.addEventListener("dblclick", takeAwayBorder);

mainPageHeader2.addEventListener("click", addBorder);
mainPageHeader2.addEventListener("dblclick", takeAwayBorder);

mainPageHeader3.addEventListener("click", addBorder);
mainPageHeader3.addEventListener("dblclick", takeAwayBorder);

var redButton = document.getElementById("red-button");
redButton.addEventListener("click", changeColorToRed);

var whiteButton = document.getElementById("white-button");
whiteButton.addEventListener("click", changeColorToWhite);

var orangeButton = document.getElementById("orange-button");
orangeButton.addEventListener("click", changeColorToOrange);