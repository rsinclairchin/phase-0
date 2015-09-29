// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var keanuReeves = "Ted Logan";
var keanuReeves = "John Wick";
console.log(keanuReeves);

//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!"
prompt("What is your favourite food?")
alert("Hey! That's my favourite food, too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "#";
var count = 1;
while(count <= 7) {
console.log(triangle += "#");
count += 1;
}

// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
  if (num1<num2) {
    return num1;
  } else {
    return num2;
  }
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Rosslyn"
  age: 25
  favourite_foods: ["sushi", "pizza", "ice cream"]
  quirk: "Loves to hit the quan"
}