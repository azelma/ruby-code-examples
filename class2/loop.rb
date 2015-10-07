# A program that loops until the user types "quit"
input = ""
while input != "quit"
  puts "Hi! This is a loop. Type 'quit' to leave!"
  input = gets.chomp
end
