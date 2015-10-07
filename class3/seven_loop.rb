def is_divisible_by_7(number)
  number % 7 == 0
end

(1..1000).each do |number|
  if is_divisible_by_7(number) #it's divisible by 7
    puts number
  end
end
