 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You're a small, furry squirrel. Winter is coming. You need to hunker down, collect some food and avoid getting eaten.
// Overall mission: Win the game.
// Goals: Get food. Find shelter. Don't get eaten.
// Characters: Squirrel thing. Dog thing.
// Objects: Squirrel. Dog.
// Functions: Take things. Fight things. And run. Definitely run.

// Pseudocode
// Prompt the user to name their character.
// Tell the user about their character.
// Get to hunting for nuts.
// Run into a big bad dog who wants to eat you!
// Run like heck!
// Run like heckier!
// Find refuge in a tree.
// Did you get enough nuts for winter? Y/N

// Initial Code

var name = prompt("Well, hello! Aren't you a fine looking squirrel! What is your name, little one?");
var squirrel = {
  name: name,
  nuts: 0,
  health: 100,
  speed: 10,
};
alert("What kind of a name is " + name + "?? Oh well. It's starting to get cold out here; shouldn't you be collecting nuts for the winter?");

function nutMunch(squirrel) {
  squirrel.nuts += 1;
}

var collect = confirm("Collect nuts")
while (collect === true){
  nutMunch(squirrel);
  collect = confirm("Collect nuts");
}

alert("Watch out! You fell into Maya's backyard! Everybody knows she the most vicious squirrel killer in the hood! You are a total goner. I suggest you RUN.");

bitchRun(squirrel);

function bitchRun(squirrel) {
  if (squirrel.nuts === 0) {
    alert("It looks like you haven't eaten in days. You don't make it halfway up the fence before Maya has you stuck between her teeth.");
    // game over.
  } else if (squirrel.nuts < 10) {
    alert("My goodness, you barely made it out of there! You may have lost a few nuts, but at least you left with your tail!");
    squirrel.nuts -= Math.floor((Math.random() * nuts)+1);
  } else if (squirrel.nuts >= 10) {
    alert("Holy smokes, I didn't think squirrels could move that fast! Good job, Turbo-" + squirrel.name + "! I didn't think you had it in you!");
  }
}

if (squirrel.nuts === 0) {
  alert("Sorry, " + squirrel.name + ", but it looks like you're out of nuts. I suggest you go jump into Maya's mouth; you're gonna starve anyways, at least somebody would be getting fed.")
  // game over.
} else if (squirrel.nuts)


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//