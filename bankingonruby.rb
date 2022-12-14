class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    public
    def display_balance(pin_number)
      if pin_number == @pin
        puts "Balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    def withdraw(pin_number,amount)
      if pin_number == @pin
        @balance -= amount
        puts "Withdrew #{amount}."
      else
        puts pin_error
      end
    end
  
    private
    def pin
      @pin = 1234
    end
    def pin_error
      return "Access denied: incorrect PIN."
    end 
  end
  #instance 
  checking_account = Account.new("Eric", 1_000_000)
  checking_account.withdraw(11, 500_000)
  checking_account.display_balance(1234)
  checking_account.withdraw(1234, 500_000)
  checking_account.display_balance(1234)

=begin
class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    
    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    private
    
    def pin
      @pin = 1234
    end
    
    def pin_error
      "Access denied: incorrect PIN."
    end
  end
  
  my_account = Account.new("Eric", 1_000_000)
  my_account.withdraw(11, 500_000)
  my_account.display_balance(1234)
  my_account.withdraw(1234, 500_000)
  my_account.display_balance(1234)
  =end
  

  