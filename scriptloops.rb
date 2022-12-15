
#A more useful iterator is the .each method, 
which can apply an expression to each element of an object,
 one at a time. The syntax looks like this:
 array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

# while loop run as long as it stops being true
counter = 1
while counter < 11
  puts counter
  counter += 1
end

# for loop three ... stop loops before the higest number and two .. run loop to the highest number
for num in 1..15
    puts num
  end

  # loop do 
  i = 20
loop do 
  i -= 1
  print "#{i}"
  break if i <= 0
end
#next key word used to skip odd or even number in certain steps
i = 20
loop do 
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end

