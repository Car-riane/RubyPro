
loop do
  puts 'Enter a positive number greater than 3:'
  answer = gets.chomp
  if answer.to_i < 4
    puts 'Invalid answer, please try again'
    next
  end
  break if answer.downcase == 'q'
  answer.to_i.times { puts 'Launch School is the best!' }
end