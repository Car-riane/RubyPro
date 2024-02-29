loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  puts answer == 4 ? 'That is correct' : 'Wrong answer, try again!'
  break if answer == 4
end