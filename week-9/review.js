// ---------- User Stories ---------- //
// As a user, I want to be able to create a new list.
// As a user, I want to add an item and its quantity to the list.
// As a user, I want to delete an item from the list.
// As a user, I want to update quantities for items in the list.
// As a user, I want to look at the list.

// ---------- Pseudocode ---------- //
// make a new grocery list (object)
// add items and their quantites to the list
// delete items from the list
// adjust quantities of items in the list
// try to print a pretty list to take to the store.

// ---------- Initial Solution ---------- //
var  groceryList = {};

function addItem(item, quantity){
  groceryList[item] = quantity;
}

function deleteItem(item){
  delete groceryList[item];
}

function newMany(item, quantity){
  groceryList[item] = quantity;
}

function printList(groceryList) {
  var items = Object.getOwnPropertyNames(groceryList);
  var quantArr = [];
  for (var quant in groceryList){
    quantArr.push(groceryList[quant]);
  }
  for (var i=0; i<items.length; i++){
    console.log("Remember, you need to get " + quantArr[i] + " " + items[i] + ".");
  }
  }

// ---------- Refactored Solution ---------- //
var  groceryList = {};

function addItem(item, quantity){
  groceryList[item] = quantity;
}

function deleteItem(item){
  delete groceryList[item];
}

function newMany(item, quantity){
  groceryList[item] = quantity;
}

function printList(groceryList) {
  for (var item in groceryList){
    console.log("Remember, you need to get " + item + " " + groceryList[item] + ".")
  }
  }

// ---------- Driver Code ---------- //
var groceryList = {};
addItem("apples", 18);
console.log(groceryList);
addItem("raindrops", 1300);
console.log(groceryList);
deleteItem("apples");
console.log(groceryList);
newMany("raindrops", 2000);
addItem("taxi", 14);
addItem("fear", 3);
console.log(groceryList);
printList(groceryList);

// ---------- Reflection ---------- //
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// It helped to get more practice passing information between function and reviewing which variables are local/global.

// What was the most difficult part of this challenge?
// Getting a pretty grocery list to print out on the screen. More specifically, it was getting a list of the quantities. Not that it even really mattered once I refactored it into a for..in loop.

// Did an array or object make more sense to use and why?
// Object, definitely! I had a list of things with values attached. That's an obvious recipe for an object right there.