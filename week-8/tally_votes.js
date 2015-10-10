// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Colin Razevich
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" },
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Iterate through votes
// Select the votes
// Add those votes to candidate properties
//   IF candidate has no votes
//     create new property
//   ELSE add to existing property
// Find candidate with max votes
// Set officer property to winning candidate

// __________________________________________
// Initial Solution

// for (var voter in votes){
//   if (!voteCount.president[votes[voter].president]){
//     voteCount.president[votes[voter].president] = 1;
//   }else{ voteCount.president[votes[voter].president] +=1;
//   }
//   if (!voteCount.vicePresident[votes[voter].vicePresident]){
//     voteCount.vicePresident[votes[voter].vicePresident] = 1;
//   }else{ voteCount.vicePresident[votes[voter].vicePresident] +=1;
//   }
//     if (!voteCount.secretary[votes[voter].secretary]){
//     voteCount.secretary[votes[voter].secretary] = 1;
//   }else{ voteCount.secretary[votes[voter].secretary] +=1;
//   }
//     if (!voteCount.treasurer[votes[voter].treasurer]){
//     voteCount.treasurer[votes[voter].treasurer] = 1;
//   }else{ voteCount.treasurer[votes[voter].treasurer] +=1;
//   }
// }


// var prez = "Bob";
// for (var candidate in voteCount.president){
//   if (voteCount.president[candidate]>voteCount.president[prez]) {
//     prez = candidate;
//   };
// };
// officers.president = prez;

// var vp = "Bob";
// for (var candidate in voteCount.vicePresident){
//   if (voteCount.vicePresident[candidate]>voteCount.vicePresident[vp]) {
//     vp = candidate;
//   };
// };
// officers.vicePresident = vp;

// var sec = "Bob";
// for (var candidate in voteCount.secretary){
//   if (voteCount.secretary[candidate]>voteCount.secretary[sec]) {
//     sec = candidate;
//   };
// };
// officers.secretary = sec;

// var treasure = "Bob";
// for (var candidate in voteCount.treasurer){
//   if (voteCount.treasurer[candidate]>voteCount.treasurer[treasure]) {
//     treasure = candidate;
//   };
// };
// officers.treasurer = treasure;


// __________________________________________
// Refactored Solution

for (var voter in votes) {
  for (var position in voteCount){
    var name = votes[voter][position];
    if (voteCount[position][name] == undefined){
      voteCount[position][name] = 1;
    }
    else {
      voteCount[position][name] += 1;
    }
  }
}

for (var position in voteCount) {
  var highestCount = 0;
  for (var candidate in voteCount[position]){
    if (voteCount[position][candidate] > highestCount){
      officers[position] = candidate;
      highestCount = voteCount[position][candidate];
    }
  }
}

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// It can be difficult to keep track of the values you are iterating over, so it's really super important to choose the most descriptive variable names possible to avoid getting lost when you're trying to read through it. It's also really helpful to console.log everything so you know exactly where you are and what you're dealing with.

// Were you able to find useful methods to help you with this?
// for...in loops were the real star of the show here. hasOwnKey was an absolute waste of space. Still have no idea what it does (besides confuse the hell out of me), but am positive that it did nothing useful for us. Things were much better once we cut that shit out.

// What concepts were solidified in the process of working through this challenge?
// Iterating through nested objects. I used to get lost 1+ deep, and now I can usually make it through 2+! The descriptive variable names really help with that, and also just getting used to the idea of having things inside of other things inside of other things.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)