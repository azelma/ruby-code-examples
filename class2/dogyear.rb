# A program that takes user input and tells them their age in dog years, upcase and reversed with character count
puts "Hi there! How old are you?"
age = gets.to_i
dog_year_multiplier = 7
response = "You are #{age * dog_year_multiplier} in dog years"
puts "#{response.upcase.reverse} (#{response.length} characters)"
