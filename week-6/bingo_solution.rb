# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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
    index = 0
    num = 47
    # index = rand(6)
    coloumn = @coloumns[index]
    # num = rand(1..100)
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



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.show_board

#Reflection
=begin

=end