# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # put the letters b, i, n, g and o into an array.
  # randomly pick a number between 0 and 5
  # use it to pull a letter
  # put that together with a randomly generated number between 1 and 100

# Check the called column for the number called.
  # iterate through the bingo board array
  # check each array at the index from line 12

# If the number is in the column, replace with an 'x'
  # board[row][coloumn] = 'X'

# Display a column to the console
  # translate b, i, n, g and o to 0, 1, 2, 3 and 4
  # iterate through the bingo board array
  # for every row array, find the number in the coloumn position
  # put that number into a coloumn array
  # print that column array


# Display the board to the console (prettily)
  # iterate through the bingo board array
  # print each row array with a newline.

# Initial Solution

class BingoBoard

  def initialize(board)
    @board = board
    @coloumns = ["B", "I", "N", "G", "O"]
  end

  def call
    index = rand(5)
    coloumn = @coloumns[index]
    num = rand(1..100)
    puts "#{coloumn}" + "#{num}"

    @board = @board.each do |row|
      row[index] == num ? row[index] = "X" : row[index] = row[index]
    end
  end

  def show_board
    @board.each {|row| puts row.join(" ")}
  end
end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @board = board
    @coloumns = ["B", "I", "N", "G", "O"]
  end

  def call
    index = rand(5)
    coloumn = @coloumns[index]
    num = rand(1..100)
    puts "#{coloumn}" + "#{num}"

    @board = @board.each do |row|
      row[index] == num ? row[index] = "X" : row[index] = row[index]
    end
  end

  def show_board
    @board.each {|row| puts row.join(" ")}
  end
end
# put letters in top row

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)

# new_game.call
# new_game.show_board

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
This was actually the easiest challenge to pseudocode yet. I had a very clear, step by step idea of what had to happen in this code, and I was able to convery that in simple english. This is also the first time I indented any of my pseudocode in a way that reflects the indentation in actual code, so that was pretty neat, too.

What are the benefits of using a class for this challenge?
We have two methods that want access to the same variable(s). It makes sense to put them together in the same class since they relate to the same object. It means that you can put all the information regarding the bingo board in when you start the game, and then use any of the methods on the bingo board without having to re-enter information.

How can you access coordinates in a nested array?
You access elements inside of a nested array by calling their index numbers starting from the outermost array.

What methods did you use to access and modify the array?
I used each to iterate through the array. It made the most sense to me at the time because I wasn't trying to change every element in the array, but look for any elements that matched a particular critereon.

How did you determine what should be an instance variable versus a local variable?
An instance variable is one that can be used in any method inside the class. Local variables are only accessed within the method it was defined. I used a few local variables for the call method, some to get through the logic of creating a unique call, and since the call wasn't going to be used anywhere else in my program I felt comfortable leaving out the @.

What do you feel is most improved in your refactored solution?
Unfortunatly, I got ahead of myself and didn't save my inital solution. However, the most exciting improvement I made in my refactoring was the discovery of the ternary operation. As the name suggests, it has three parts. The first part is a comparative expression, and the next two parts are blocks of code to execute if the expression is true or if it's false, separated by a :. It was really useful for condensing short if statements!
=end