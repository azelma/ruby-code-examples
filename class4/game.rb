load "character.rb"
load "die.rb"

puts "Welcome to my adventure game!"
puts "What is your character name?"
name = gets.chomp
puts "Enter 1 to be an elf or 2 to be a warrior"
input = gets.chomp
if input == "1"
  character = Elf.new(name)
else
  character = Warrior.new(name)
end
other_character = Warrior.new("Trogdor")
puts "You encounter another character!"
puts other_character.get_name.upcase
other_character.greet(character)
other_character.intimidate
puts "Enter 1 to fight #{other_character.get_name} or 2 to try and outwit them"
puts
input = gets.chomp
if input == "1"
  character.fight(other_character)
else
  character.outwit(other_character)
end
