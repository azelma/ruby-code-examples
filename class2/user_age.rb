# A program that takes a user's birth year and tells them their age in years, days, and seconds.
puts "Hi there! What year were you born?"
birth_year = gets.to_i
this_year = 2015
days_in_a_year = 365
hours_in_a_day = 24
seconds_in_a_minute = 60
minutes_in_an_hour = 60
seconds_in_an_hour = seconds_in_a_minute * minutes_in_an_hour
seconds_in_a_day = seconds_in_an_hour * hours_in_a_day
seconds_in_a_year = seconds_in_a_day * days_in_a_year
age = this_year - birth_year
puts "You are #{age} years old"
puts "You are #{age * days_in_a_year} days old"
puts "You are #{age * seconds_in_a_year} seconds old"
