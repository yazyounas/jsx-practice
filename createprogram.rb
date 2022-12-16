puts "Enter the Text"
text = gets.chomp

words = text.split(' ')
# made new hash
frequencies = Hash.new(0)
# increamnet hash
words.each do |word|
frequencies[word] += 1
puts frequencies
end
# sort hash with word and count
frequencies = frequencies.sort_by do |word,count|
puts "#{word}: #{count}"
end
# reverse hash
frequencies.reverse!
# iterate over hash
frequencies.each do |word, count|
puts word + " " + count.to_s
end