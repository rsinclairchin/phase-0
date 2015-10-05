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
};

alert("What kind of a name is " + name + "?? Oh well. It's starting to get cold out here; shouldn't you be collecting nuts for the winter?");

function nutMunch(squirrel) {
  squirrel.nuts += 1;
}

var collect = confirm("Collect nuts");
while (squirrel.nuts <= 10){
  nutMunch(squirrel);
  collect = confirm("Collect nuts");
}
if (squirrel.nuts === 10) {
  alert("You can't carry so more than 10 nuts. You're just a tiny squirrel for goodness' sake.");
}

alert("Alright, alright! Enough with the nuts! You've collected " + squirrel.nuts + " nuts.");

var run = confirm("Watch out! You fell into Maya's backyard! Everybody knows she the most vicious squirrel killer in the hood! You are a total goner. Y'think you should run or nah?");

if (run === true){
  bitchRun(squirrel);
} else {
  alert("Well, it was nice knowing ya, " + squirrel.name + ". You shoulda ran.");
  // game over.
}

function bitchRun(squirrel) {
  if (squirrel.nuts === 0) {
    alert("It looks like you haven't eaten in days. You don't make it halfway up the fence before Maya has you stuck between her teeth.");
    // game over.
  } else if (squirrel.nuts < 10) {
    alert("My goodness, you barely made it out of there! You may have lost a few nuts, but at least you left with your tail!");
    squirrel.nuts -= Math.floor((Math.random() * squirrel.nuts)+1);
  } else if (squirrel.nuts >= 10) {
    alert("Holy smokes, I didn't think squirrels could move that fast! Good job, Turbo-" + squirrel.name + "! I didn't think you had it in you!");
  }
}

if (squirrel.nuts === 0 && run === true) {
  alert("Sorry, " + squirrel.name + ", but it looks like you're out of nuts. I suggest you go jump into Maya's mouth; you're gonna starve anyways, at least somebody would be getting fed.");
  // game over.
} else if (squirrel.nuts < 10) {
  alert("Well, " + name + ", it's been nicing knowing ya. You only have " +squirrel.nuts + " nuts to get you through the winter. Hopefully it's a mild winter and I'll see you on the other side.");
}
  else if (squirrel.nuts >= 10) {
    alert("Wow, with " + squirrel.nuts + " nuts, you'll be eating well every day through winter! See you in the spring, fat cat.");
  }

  var baby = {
    nuts: 0,
  };

  if (squirrel.nuts !== 0 && run === true) {
    alert("Hang on, what was that? Small rustling in the leaves...");
    var share = prompt("It's a baby! Oh shoot, this baby is not going to be okay. You have " +squirrel.nuts + " nuts left, how many do you want to share any with the baby?");
    squirrel.nuts -= share;
    baby.nuts += share;
    if (share === 0 ) {
      alert("Yeah, who needs babies anyways? Your selfish ways may have granted you plenty of nuts for you to survive the winter, but it drives away all the other squirrels and you live out the rest of your life guilty, lonely, and unloved.");
      // game over.
    } else {
      alert("You now have " + squirrel.nuts + " nuts left.");
    }
  }

if (squirrel.nuts >= 5 && baby.nuts >= 5) {
  alert("Both you and the baby have enough nuts for the winter. And it seems as though you got a little cuddle bug, too! Good job. You win.");
}else if (squirrel.nuts < 5 && baby.nuts > 5) {
  alert("You sacrificed your survival for the baby. We'll call this an honorable win.");
}else if (squirrel.nuts < 5 && baby.nuts < 5) {
  alert("You don't have enough nuts to survive and neither does the baby. You both starve before spring. So sorry, you lose.");
}


// Reflection
// What was the most difficult part of this challenge?
// It was most difficult to think of a storyline that included at least two objects interacting with each other. I started off with only the squirrel object, and any additions to my game seemed to only involve more functions, not more objects. I also had a really time thinking of mission or a goal. I feel so creatively handicapped looking at this challenge.
// What did you learn about creating objects and functions that interact with one another?
// It's really easy. Just remember to put the object.property and not just the property. I did that a few times.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I did not have time to refactor this code, and I truly regret that. Refactoring is my favourite part.
// How can you access and manipulate properties of objects?
// Just set object.property equal to the new value you want it to have, or all it to use it elsewhere in your code.