// Corbin Via: DBC Week 9.2 Assignment

// Event Listeners

console.log("This script is going to edit some things on the site.")

function addBorder(event){
	event.target.style.border = "5px solid black";
}

function takeAwayBorder(event){
	event.target.style.border = "none"
}

var testElement = document.getElementById("main-page-header");

testElement.addEventListener("mouseenter",addBorder)

testElement.addEventListener("mouseleave",takeAwayBorder)