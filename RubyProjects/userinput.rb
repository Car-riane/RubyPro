
# loop do
#   puts 'Enter a positive number greater than 3:'
#   answer = gets.chomp
#   if answer.to_i < 4
#     puts 'Invalid answer, please try again'
#     next
#   end
#   break if answer.downcase == 'q'
#   answer.to_i.times { puts 'Launch School is the best!' }
# end

first = nil
second = nil

loop do 
  puts "Enter a number"
  first = gets.chomp.to_i
  puts "Enter another number"
  second = gets.chomp.to_i
  
  break if (first > 0 && second < 0) || (first < 0 && second > 0) 
  puts "Enter a positive and negative number, try again"
end 

result = first + second
puts  "#{first} + #{second} = #{result}"