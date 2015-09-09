##Release 1


In Ruby, puts will print the output of the code to the screen as well as a newline.

An integer is a whole number, a float is a decimal value.

Integer division only returns integers. Integer division asks the question "How many times does this number go into that number" and does not include any fractions. It's for things that operate as wholes and can't be split up into pieces. Chris Pine includes a great example in his book. He says if you have 9 dollars and a movie ticket costs 2 dollars, you can only buy 4 movie tickets. There are no half-tickets in this equation.



##Release 2


###hours in a year
puts 24*365

###minutes in a decade
puts 60*24*365*10



##Release 7: Reflect


###How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Addition, subtraction, multiplication and division are all ruby methods. They behave much as you'd expect them to, except perhaps division. Division used on floats gives a float back, so you can expect to see decimal values in your answer. Division used on integers give integers back, always rounded down to the nearest whole number. To use any o f the

###What is the difference between integers and floats?

Integer are whole numbers, floats have decimal values. Integers are good for things that can't be split into fractions. How many people are going on the cruise? The answer must be a whole number, there's no fraction of a person who could go. Floats are used for things that can be fractioned. How many oreos can we fit into Jerry's mouth? Maybe 5.5. We'll give Jerry the half.

###What is the difference between integer and float division?

Integer division only returns integers. Float division only returns floats. See Q1.

###What are strings? Why and when would you use them?

Strings are containers full of... things. Or nothing. The computer doesn't compute anything inside of a string, it just stores it for you to look at later if you want. Strings are good for holding sentences to print to the screen to prompt the user for input, or just to say hello, or to make funny little emoticons. So far, strings have been used primarily to communicate with a user; either to ask for data or to return something that reads like english.

###What are local variables? Why and when would you use them?

Local variables are names that are assigned a value that can be referred to throughout your code. They can't be used accross different blocks of code, only the one they've been declared in.

###How was this challenge? Did you get a good review of some of the basics?

The coding involved in this challenge was way too easy! However, it did highlight an issue I was having with rspec on my computer, and that proved to be challenge enough.