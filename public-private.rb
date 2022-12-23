=begin
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
  public
  def bark 
  puts "Woof!"
  end
end
=end

# including module and classes

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

#  A Matter of Public Knowledge


class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
   def print_status
   puts "All systems go!"
   end
  
end

# Private Affairs

class Application
  attr_accessor :status
  def initialize; end
  public
  def print_status
    puts "All systems go!"
  end
  # Add your method here!
  private
  def password
    return 12345
  end
end

# Module Magic

module Languages
  FAVE = "Ruby"
end


# Mixin for the Win

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
 include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory
