fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!
doubled_fibs = fibs.collect { |num| num * 2}
puts doubled_fibs 

# Learning yield
def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
  end
  
  yield_name("Eric") { |n| puts "My name is #{n}." }
  
  # Now call the method with your name!
  yield_name("Yasir") { |y| puts "My name is #{y}"}

  # proc 
  floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
  round_down = Proc.new { |x| x.floor }

# Write your code above this line!
ints = floats.collect(&round_down)
print ints


  multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end
  
  print (1..100).to_a.select(&multiples_of_3)


  