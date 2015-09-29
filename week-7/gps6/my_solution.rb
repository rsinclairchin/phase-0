# Virus Predictor

# I worked on this challenge [by myself].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# allows information contained in a separate file located in the same directory to be used within the program
#
require_relative 'state_data'

class VirusPredictor

# accepts three arguments and sets instance variables to those values
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls predicted_deaths and speed_of_spread in one method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# based on population_density, predicts the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 200..1000
          number_of_deaths = (@population * 0.4).floor
      when 150...200
          number_of_deaths = (@population * 0.3).floor
      when 100...150
          number_of_deaths = (@population * 0.2).floor
      when 50...100
          number_of_deaths = (@population * 0.1).floor
      else
          number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# based on population_density, calculated speed of spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
      when 200..1000
        speed = 0.5
      when 150...200
        speed = 1
      when 100...150
        speed = 1.5
      when 50...100
        speed = 2
      else
        speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

  # def total_virus_effects
  #   STATE_DATA.each do |state|
  #     predicted_deaths(@population_density, @population, @state)
  #     speed_of_spread(@population_density, @state)
  #   end
  # end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state|
  usa_states = VirusPredictor.new(state[0], state[1][:population_density], state[1][:population])
  usa_states.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One shows the state name in a string as the key and uses => to point to the value (another hash), whereas the other uses a symbol as the key and a : to separate the value. They both work the same way; they syntax was likely chosen to improve readability.

What does require_relative do? How is it different from require?
require_relative lets the program look into another file located in the same directory and access information from it. require loads built-in Ruby extentions or libraries.

What are some ways to iterate through a hash?
There are a few methods that will iterate through a hash. I used each for this challenge because I wanted to look at every element within the hash without changing it. Other methods for iterations include map and collect, but I think those are intended more for modifying the elements within a hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables were instance variables, which meant that they could be accessed from anywhere within the class. Because they had already been defined in the initialize method, the predicted_deaths and speed_of_spread methods didn't need to take in any other arguments when they were called in virus_effects.

What concept did you most solidify in this challenge?
I had the chance to practice accessing elements in nested data structures, as well as better my understanding of instance variables. I also hadn't seen require_relative or private before, so it was nice to learn about those pieces of code, too.

=end