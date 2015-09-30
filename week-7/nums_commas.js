// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Lauren Markzon.

// Pseudocode
// Create function that accepts number (integer) as input
// Convert digits to strings
  // create empty array for output to go in
  // split number into individual digits
  // Reverse order of strings
// split strings into groups where we want commas to go
  // Insert a comma every three digits
// Put digits back together into a string
  // join the groups with a comma
  // reverse number back
// Output: Integer as a String with commas


// Initial Solution

function separateCommas(number) {
  var output = [ ];
  var digits = number.toString().split("").reverse();

  while (digits.length > 0)
    output.push(digits.splice(0, 3).join(''));

    digits = output.join(',').split('');
    output = digits.reverse().join('')

  console.log(output);

}

// Refactored Solution
function separateCommas(number) {
  var digits = number.toString().split('');
  var i = 3;
  while (i<digits.length) {
    digits.splice(-i,0,',');
    i += 4;
  }
}

// Your Own Tests (OPTIONAL)
separateCommas(10000876524938673945)

// // Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// It was terrible. Neither my pair nor I had any experience in Javascript, and while we had read the assigned EJS, we were still not prepared to take on a challenge like this. We approached the problem having no idea what we were doing, and eventually, after many, many, many websearches and failed attempts at using splice, slice, replace, push and other methods, we looked back to how we solved this problem in Ruby and tried again from there. Things came together much quicker once we did that.

// What did you learn about iterating over arrays in JavaScript?
// for loops are tricky little bastards. while loops work much the same as they did in Ruby.

// What was different about solving this problem in JavaScript?
// The returned value after implementing a method is oftentimes not what I'd expect. I would work on our array and not know why I was getting an empty array back, or for a minute there we were using push and getting some number back. Turns out that push returns the length of the new array. But why. It sometimes felt like Javascript was trying to fuck with us. Thank the lord for w3schools.

// What built-in methods did you find to incorporate in your refactored solution?
// We worked hard on getting to know splice. We also used more familiar methods like split and length.