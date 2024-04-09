# def predict_weather
#   sunshine = ['true', 'false'].sample

#   if sunshine 
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

# predict_weather

# def multiply_by_five(n)
#   n * 5
# end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp.to_i

# puts "The result is #{multiply_by_five(number)}!"

# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n|
#    n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

# def digit_product(str_num)
#   digits = str_num.chars.map { |n| n.to_i }
#   product = 1

#   digits.each do |digit|
#     product *= digit
#   end

#   product
# end


# p digit_product('12345')
# expected return value: 120
# actual return value: 0

# Further Exploration with min

# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# colors.shuffle!
# things.shuffle!

# i = 0

# loop do
#   break if i >= [colors.length, things.length].min

#   if i == 0
#     puts 'I have a ' + colors[i].to_s + ' ' + things[i].to_s + '.'
#   else
#     puts 'And a ' + colors[i].to_s + ' ' + things[i].to_s + '.'
#   end

#   i += 1
# end

require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('rps.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

TURNS = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(spock paper),
  'spock' => %w(rock scissors)
}

def prompt(message)
  puts(message)
end

def win?(first, second)
  TURNS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt(MESSAGES['player'])
  elsif win?(computer, player)
    prompt(MESSAGES['computer'])
  else
    prompt(MESSAGES['tie'])
  end
end

wins = 0
cwins = 0
round = 1

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    wins += 1
  elsif win?(computer_choice, choice)
    cwins += 1
  else
    wins += 1
    cwins += 1
  end

  prompt("Player has #{wins} and Computer has #{cwins}")
  prompt("Round #{round}")
  round += 1

  break if wins == 3 || cwins == 3
  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

if (wins == 3)
  prompt(MESSAGES['winner'])
else  
  prompt(MESSAGES['cwinner'])
end 

prompt(MESSAGES['farewell'])
