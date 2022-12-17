# Parameters and Arguments
def cubertino(n)
    puts n ** 3
  end
  
  cubertino(8)

  # Splat!

  def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
  end
  # practice makes perfection
  what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")
  def greeter(name)
    return "Hello, #{name}!"
  end
  
  greeter("yasir")
  
  def by_three?(number)

    if number % 3 == 0
      return true
    else
      return false
    end
  end
  by_three?(100)
  
 # Blocks Are Like Nameless Methods
 1.times do
    puts "I'm a code block!"
  end
  
  1.times { puts "As am I!" }
  
  # How Blocks Differ from Methods

  def capitalize(string) 
    puts "#{string[0].upcase}#{string[1..-1]}"
  end
  
  capitalize("ryan") # prints "Ryan"
  capitalize("jane") # prints "Jane"
  
  # block that capitalizes each string in the array
  ["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

  #using code block
  [1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts i * 5 }

# Sorting array in numbers and strings
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
my_array.sort!
puts my_array

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# How might we sort! the books in alphabetical order? (Hint, hint)
books.sort!

puts books
# The Combined Comparison Operator
book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

output = book_1 <=> book_2
puts output

# SORTING ARRAY IN ACEENDING AND DECCENDING

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }


# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
puts books

# each multiply by itself

=begin
  def alphabetize(arr, rev = false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
  	arr
  end
end

numbers = [3, 5, 1, 6]

puts alphabetize(numbers)
-end
matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}
matz.each do |key, value|
puts matz[key]
end