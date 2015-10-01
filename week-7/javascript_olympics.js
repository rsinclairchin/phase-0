 // JavaScript Olympics

// I paired [with: Jupiter Baudot] on this challenge.

// This challenge took me [2] hours.


// Warm Up




// Bulk Up

 var sarah = {
    name: "Sarah Hughes",
    event: "Ladies' Singles",
  }

 var athletes = [sarah];

 for (var i=0;i<athletes.length;i++) {
     athletes[i].win = athletes[i].name + " won the " athletes[i].event
  }

console.log(sarah.win)


// Jumble your words

// var str = "Some words"
// var arr = str.split('')
// arr.reverse()
// console.log(arr.join(''))

function jumble(words) {
  return words.split('').reverse().join('')
}

// 2,4,6,8
// var evens = [];
// for (var i=0; i<arr.length; i++) {
//   if (arr[i]%2 === 0) {
//     evens.push(arr[i])
//   }
// }
// console.log(evens)

function returnEven(numbers){
  var evens = [];
  for (var i=0; i<numbers.length; i++) {
    if (numbers[i]%2 === 0)
      evens.push(numbers[i])
  }
  console.log(evens)
}

// "We built this city"
function athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I got some practice creating functions. That was pretty great. Figuring out what gets returned is getting easier, too. Learning to expect the unexpected.

// What are constructor functions?
// Constructor functions take in arguments and set them to equal to object properties. It's a quick, easy, convenient way to create new objects.

// How are constructors different from Ruby classes (in your research)?
// Constructors are very similar to the Ruby initalize method inside of Ruby classes. They both take an input and set it to some variable relating to the object being created. Ruby classes, however, can contain so many other methods. Ruby classes have class methods, whereas constructor functions do not.