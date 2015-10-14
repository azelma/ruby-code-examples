def countdown(num)
  puts num
  countdown(num-1) unless num == 0
end
