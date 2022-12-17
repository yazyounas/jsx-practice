# method to convert string to symbol
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |string| 
 symbols.push(string.to_sym)
 end
 print symbols

 # Different method to convert string to symbol
 strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |string| 
 symbols.push(string.intern)
 end
 print symbols

 # Becoming more Selective
 movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select { |name, rating| rating > 3 }

puts good_movies