puts "One is less than two!" if 1 < 2

# condition statement refactoring 
if 1 < 2
    puts "One is less than two!"
  else
    puts "One is not less than two."
  end

# (refactor above condition) puts 1 < 2 ? "One is less than two!" : "One is not less than two."

# refectoring if and els statement using case same as javascript
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
 return Prime.first n
end

first_n_primes(10)




puts "What's your favorite language?"
language = gets.chomp
case language
when "Ruby" then puts "Ruby is great for web apps!"

  when "Python" then puts "Python is great for science."
  
  when "JavaScript" then puts "JavaScript makes websites awesome."

 when "HTML" then puts "HTML is what websites are made of!"

  when "CSS" then puts"CSS makes websites pretty."
else
  puts "I don't know that language!"
end
3.times do
    puts "I'm a refactoring master!"
  end