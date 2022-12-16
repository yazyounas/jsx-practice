# Parameters and Arguments
def cubertino(n)
    puts n ** 3
  end
  
  cubertino(8)

  # Splat!

  def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
  end
  
  what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")
  