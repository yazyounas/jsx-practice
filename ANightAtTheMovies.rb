movies = {
  Grey: 5,
  Gladiator: 3,
  Identity: 4
}

choice = puts "What would you like to do?"
case choice
when "add"
puts "added"

when "update"
puts "updated!"

when "display"
puts "Movies!"

when "delete"
puts "Deleted!"

else 
puts "Error!"
end