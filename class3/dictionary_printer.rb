# Write a program that takes a hash and prints out the
# contents formatted like a dictionary

# {"apple" => "a round, red fruit", "kiwi" => "a small round fruit with a brown exterior and green flesh"}
# apple - definition: a round, red, fruit
# kiwi - definition: a small round fruit with a brown exterior and green flesh

def dictionary_printer(hash)
  hash.each do |key, value|
    puts "#{key}-definition: #{value}"
  end
end
