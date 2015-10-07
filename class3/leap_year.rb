def is_leap_year(year)
  # return boolean
  if year % 4 != 0 # if the year is not divisible by 4
    return false # it's not a leap year
  else
    if year % 100 == 0 && year % 400 != 0 # year is divisible by 100 but not 400
      return false
    else
      return true
    end
  end
end

keep_running = true
while keep_running
  puts "Type in a year and I'll tell you if it's a leap year!"
  user_input = gets.chomp
  if user_input == "quit"
    puts "Bye!"
    keep_running = false
  else
    if is_leap_year(user_input.to_i)
      puts "#{user_input} is a leap year!"
    else
      puts "#{user_input} is not a leap year!"
    end
  end
end
