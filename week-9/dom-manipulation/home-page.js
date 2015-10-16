// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById("release-0").className = "done"


// Release 2:

document.getElementById("release-1").setAttribute("display", "none")


// Release 3:

document.getElementsByTagName("h1").firstChild.createTextNode("I completed release 2.")


// Release 4:

document.getElementById("release-3").setAttribute("background-color", "#955251")


// Release 5:

document.getElementByClassName("release-4").setAttribute("text-size", "2em")

// Release 6:

var zombies = document.getElementById("hidden")
document.body.appendChild("zombies")

//RELEASE 7: Reflect
/*
What did you learn about the DOM?
I believe the DOM transforms an html document into an object, which can then be manipulated and played with. All the elements within the document can be treated in the same way. I'm still a little fuzzy on the details, but I am starting to get a hold of how to target specific elements and getting used to parrent/child relationships within html.

What are some useful methods to use to manipulate the DOM?
.css() was particularly useful. I'm not sure exactly why we would want to alter the css in the js file instead of the stylesheet itself, but it happened and I can handle that. .animate() was the most fun method to use. .addClass() could potentially come in handy, if I ever wanted to throw a div into a group with its own styling.
*/