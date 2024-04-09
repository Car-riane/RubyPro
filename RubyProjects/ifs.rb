# sun = ['visible', 'hidden'].sample

# puts "The sun is so bright" if sun == 'visible'
# puts "The clouds are blocking the sun!" unless sun == 'visible'

boolean = [true, false].sample
puts (boolean ? "I am true" : "I am false ")


# stoplight = ['green', 'yellow', 'red'].sample

# case 
# when 'green' then puts 'Go!'
# when 'yellow' then puts 'Slow down!'
# else puts 'Stop!'
# end 

# puts 'Go!' if stoplight == 'green'
# puts 'Slow down' if stoplight == 'yellow'
# puts 'Stop!' if stoplight == 'red'


# status = ['awake', 'tired'].sample

# puts "Be productive!" if status == 'awake'
# puts "Go to sleep!" if status == 'tired'

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end