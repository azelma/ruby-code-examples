puts "Type in a number and I'll tell you if it's even!"
number = gets.chomp.to_i
if number % 2 == 0 #even
  puts "Your number is even!"
else #odd
  puts "Your number is odd!"
end
