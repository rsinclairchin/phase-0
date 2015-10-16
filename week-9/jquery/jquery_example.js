// U3.W9:JQuery


// I worked on this challenge [with: Richard Leo].
// This challenge took me [1] hours.




$(document).ready(function(){
  $('h1:first').css({'color': 'blue', 'border': '5px solid red', 'visibility': 'visible'});
  $('h1:last').html("Bobolinks 2015");
  $('img').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'bobolink.jpg');
    $(this).css({"border": "2px dotted green"}).animate({'height': '250px', 'width': '250px', 'borderWidth': '4px'},500);
  })
  $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
    $(this).animate({'height': '50px', 'width': '200px'},500);
  })

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.



//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements


//RELEASE 4: Event Listener
  // Add the code for the event listener here


//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//RELEASE 7: Reflect
/*
What is jQuery?
jQuery is a library of tools to use with JavaScript. It lets us do really neat stuff like animate divs and play around with elements in the DOM. There are lots of libraries that can be linked to the html document that give us lots of cool methods and stuff to make our websites awesome.

What does jQuery do for you?
jQuery does all kinds of tricks with html in the DOM. Really cool animations, and interactivity.

What did you learn about the DOM while working on this challenge?
I learned how to target specific elements in the html file using parent/child relationships. I also learned what arguments to put in and how for the .css() function and the .animate() function.

*/