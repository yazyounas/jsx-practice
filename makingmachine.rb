class Machine
    @@users = {}
    
    def initialize(username, password)
      @username = username
      @password = password
      @@users[username] = password
      @files = {}
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}."
    end
    
    def Machine.get_users
      @@users
    end
  end
  
  my_machine = Machine.new("eric", 01234)
  your_machine = Machine.new("you", 56789)
  
  my_machine.create("groceries.txt")
  your_machine.create("todo.txt")
  
  puts "Users: #{Machine.get_users}"
=begin
class Computer
    @@users = {}
    def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created at #{time} by #{@username}. "
    end
    
    def Computer.get_users
      @@users
    end
  end
  
  my_computer = Computer.new("superUser", "12345")
  my_computer.create("groceries.txt")
  my_computer.create("todo.txt")
   =end