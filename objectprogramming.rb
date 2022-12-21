class Language
    def initialize(name, creator)
      @name = name
      @creator = creator
    end
      
    def description
      puts "I'm #{@name} and I was created by #{@creator}!"
    end
  end
  
  ruby = Language.new("Ruby", "Yukihiro Matsumoto")
  python = Language.new("Python", "Guido van Rossum")
  javascript = Language.new("JavaScript", "Brendan Eich")
  
  ruby.description
  python.description
  javascript.description

  # number of instances cool trick 
  
  
  class Person
    # Set your class variable to 0 on line 3
    @@people_count = 0
    
    def initialize(name)
      @name = name
      # Increment your class variable on line 8
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable on line 13
      return @@people_count
    end
  end
  
  matz = Person.new("Yukihiro")
  dhh = Person.new("David")
  
  puts "Number of Person instances: #{Person.number_of_instances}"

  # real commercial software
  def create_record(attributes, raise_error = false)
    record = build_record(attributes)
    yield(record) if block_given?
    saved = record.save
    set_new_record(record)
    raise RecordInvalid.new(record) if !saved && raise_error
    record
  end

  # inherit class
  @name = name
end

def fight
  return "Punch to the chops!"
end
end

# Add your code below!
class Dragon < Creature 
 def fight
    return "Breathes fire!"
    end
end

# created classes, instance and sub classes

class Message 
    @@messages_sent = 0
   def initialize(from, to)
     @from = from
     @to = to
     @@messages_sent += 1
   end
   end
   class Email < Message
     def initialize(from, to)
      super
    end
    end
  
   my_message = Message.new("Yasir", "Mihaela")