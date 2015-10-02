/////////////   REFACTORED SOLUTION   /////////////

function median(array) {

  console.log(array.length);
  console.log(array.sort());

  var value = array.length/2;

  if (array.length % 2 === 0) {
      console.log(array.sort()[value], array.sort()[value - 1]);
    }
  else {
      console.log(array.sort()[value-.5]);
    }
};


// I changed the output for sum so I could reuse this function in mean
// I know that's against the rules,
// so alternative solutions are underneath
function sum(array) {
    var total = 0;
    for (var x in array) {
    total += array[x];
    }
  return total;
};


// Keeping the original output for sum,
// Not much to refactor here

// function sum(array) {
//  var total = 0;
//   for (var x in array) {
//    total += array[x];
//    }
//    console.log(total);
// };


function mean (array) {
  sum(array);
  console.log(array.length);
  console.log(sum(array) / (array.length));
};


// Keeping the original output for sum,
// requires it to be rewritten within mean

// function mean(array) {
//   var total = 0;
//     for (var x in array) {
//       total += array[x];
//     }
//   console.log(total);
//   console.log(array.length)
//   console.log(total/array.length);
// };

/////////////   USER STORIES   /////////////

// As a user, I want to...

//  ... be told how many numbers are in a set, shown what that set looks like when it has been organized from smallest to largest, and told what the median value(s) is. All at once.

//  ... be told the sum of a set of numbers.

//  ... be told the sum of a set of numbers, how many numbers are in that set, and what the mean value is of that set. All at once.