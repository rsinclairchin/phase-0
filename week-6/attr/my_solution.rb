#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

class NameData
  attr_accessor :name
  def initialize
    @name = "Keanu Reeves"
  end
end


class Greetings
  def initialize
    @student = NameData.new
  end
  def hello
    puts "Hello #{@student.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1
These methods change the instance variables and accesses them.

Release 2
This release includes attr_reader :age. The method whats_my_age can be done away with, it just returns @age which can now be returned by simply calling age. Much simpler.

Release 3
Now we have attr_writer :age. This replaces the change_my_age method. An entire method in one short line. Much simpler again.

Release 6
What is a reader method?
A reader method checks the value of an instance variable.

What is a writer method?
A writer method can change the value of an instance variable.

What do the attr methods do for you?
The attr methods put the whole reader, writer or reader and writer methods into one tidy little line of code. It replaces

def reader_method(thing)
  @thing = thing
end
def writer_method(thing)
  @thing = thing
end

with attr_accessor :thing. So compact!

Should you always use an accessor to cover your bases? Why or Why not?
What is confusing to you about these methods?
You should not always use an accessor to cover your bases. That might give too much power. Sometimes you don't want your instance variables to ever change. If you want them set in stone, you should use attr_reader only. The one thing I am confused about is when you would ever want to use attr_writer only. I'm going to go look it up and be confused no more!

=end