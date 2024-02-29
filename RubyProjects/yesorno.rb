puts 'Do you want me to print something? (y/n)'
answer = gets.chomp
if answer.match?(/y|n/i)
  print answer
else
  puts 'Invalid answer, Please enter y or n'
end