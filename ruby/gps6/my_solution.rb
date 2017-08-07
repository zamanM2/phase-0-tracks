# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is used to link files in the same directory as your main file
# require is used to link to gem files in the ruby path.
require_relative 'state_data'

class VirusPredictor
  attr_reader :population_density, :population, :state
  # takes input state, pop den and the pop and sets them to an instance variable.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #takes no input, returns an output of the method "predicted_deaths", speed_of_spread and runs them with state_data values.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # inputs the pop den, the pop and the state name and depending on the size of the pop den, it outputs the pop multiplied by a number.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case population_density
      when 200..500
        number_of_deaths = (population * 0.4).floor
      when 150..200
        number_of_deaths = (population * 0.3).floor
      when 100..150
        number_of_deaths = (population * 0.2).floor
      when 50..100
        number_of_deaths = (population * 0.1).floor
      when 0..50
        number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes input of pop den and state and outputs a speed of spread, dependant on the pop den size
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case population_density
      when 200..500
        speed += 0.5
      when 150..200
        speed += 1
      when 100..150
        speed += 1.5
      when 50..100
        speed += 2
      when 0..50
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |predict, inner_hash|
  first_fifty = VirusPredictor.new(predict, STATE_DATA[predict][:population_density], STATE_DATA[predict][:population])
  first_fifty.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
#The difference between the two hash is that one is a hash on the outside and the other hash is a nested one on the inside.
#What does require_relative do? How is it different from require?
#Require_relative gives the relative method a pathway from another file to acces. 
#What are some ways to iterate through a hash?
#One way to itternate through a hash is by using "case" and then when itteration between the keys you want.
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#What concept did you most solidify in this challenge?
#What stood out to me the most that I think i solidifed is when I had to take a driver code and  change it up so
#that I can itterate through the whole list in the other file rather than write each state out one by one.









