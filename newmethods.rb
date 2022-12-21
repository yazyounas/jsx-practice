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

# with proc use same method again and again
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

# More pratice oof proc using string
def greeter
    yield
  end
  
  phrase = Proc.new { puts "Hello there!" }
  
  greeter(&phrase)

  multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end
  
  print (1..100).to_a.select(&multiples_of_3)

  # convert from number to string array and from string array to number array 
  =begin
  strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]
=end
  numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)
puts strings_array 

# take out symbol using lambda
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

integer = lambda { |int| int.is_a? Integer}
ints = odds_n_ends.select(&integer)

puts ints

# Practice with procs
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |num| num < 100 }

youngsters = ages.select(&under_100)

puts youngsters

  