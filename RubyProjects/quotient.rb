
numerator = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts 'Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)

  puts 'Invalid numerator, please try again'
end

denominator = nil

loop do
  puts 'Please enter the denominater:'
  denominator = gets.chomp

  if denominator == 0
    puts 'A denominator of 0 is not allowed'
  else
    break if valid_number?(denominator)

    puts 'Invalide denominator, please try again'
  end
end

quotient = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} = #{quotient}"
