puts 'Enter a positive integer:'
positive = gets.chomp.to_i

puts 'Enter a negative integer:'
negative = gets.chomp.to_i


result = positive + negative
puts "The result of #{positive} + #{negative} is #{result}"