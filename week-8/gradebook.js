/*
Gradebook from Names and Scores
I worked on this challenge [with: Marcus Davis]
This challenge took me [1.5] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

// __________________________________________
// Write your code below.

// var students = ["Joseph", "Susan", "William", "Elizabeth"]

// var scores = [ [80, 70, 70, 100],
//                [85, 80, 90, 90],
//                [75, 70, 80, 75],
//                [100, 90, 95, 85] ]

// var gradebook = {
//   Joseph: {testScores: scores[0]},
//   Susan: {testScores: scores[1]},
//   William: {testScores: scores[2]},
//   Elizabeth: {testScores: scores[3]},
//   addScore: function (name, score) {
//               gradebook[name].testScores.push(score)
//             },
//   getAverage: function(name) {
//                return average(gradebook[name].testScores);
//             },
// };

// function average(array) {
//   var total = 0;
//   for(var count = 0; count < array.length; count++) {
//     total += array[count];
//   }
//   var mean = total/array.length;
//   return mean
// }

// __________________________________________
// Refactored Solution

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

var gradebook = {
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
  addScore: function (name, score) {
              gradebook[name].testScores.push(score)
            },
  getAverage: function(name) {
               return average(gradebook[name].testScores);
            },
};

function average(array) {
  var total = 0;
  total = array.reduce(function(a, b){return a+b})
  var mean = total/array.length;
  return mean
}

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// Adding functions is not so difficult, what's tricky is making sure that the arguments passed into it are what you mean for them to be. Accessing property values with variable names was the real challenge today.

// How did you iterate over nested arrays in JavaScript?
// Quite simply. We just lined up each call one right after the other like linking together methods. Start with one, and then carry on acting as though that one has gone and gotten what it was supposed to get.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We found an alternative method that we used to summate an array without having to use a for loop. It's called reduce. It takes in a function as an argument and applies that funtion to all the elements inside. It's not really less complicated than a for loop, but it's shorter!

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)