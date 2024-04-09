require 'yaml'
MESSAGES = YAML.load_file('shoushiling.yml')

MOVES = {
  'rock' => { abbreviation: 'r', defeats: %w[scissors lizard] },
  'paper' => { abbreviation: 'p', defeats: %w[spock rock] },
  'scissors' => { abbreviation: 'sc', defeats: %w[paper lizard] },
  'lizard' => { abbreviation: 'l', defeats: %w[spock paper] },
  'spock' => { abbreviation: 'sp', defeats: %w[scissors rock] }
}

def prompt(message)
  sleep(1)
  puts(message)
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['move'])

choice = gets.chomp
player_choice = MOVES.keys.include?(choice)

valid_abbreviations = MOVES.map { |_, value| value[:abbreviation] }
valid_keys = MOVES.keys

if valid_keys.include?(choice) || valid_abbreviations.include?(choice)
else
  prompt('invalid')
end

computer_choice = MOVES.keys.sample

prompt("Computer chose: #{computer_choice}.")

# case 
# when choice == 'rock' && MOVES[choice][:defeats].include?(computer_choice)
#   prompt(MESSAGES['player'])
# when choice == 'paper' && MOVES[choice][:defeats].include?(computer_choice)
#   prompt(MESSAGES['player'])
# when choice == 'scissors' && MOVES[choice][:defeats].include?(computer_choice)
#   prompt(MESSAGES['player'])
# when choice == 'lizard' && MOVES[choice][:defeats].include?(computer_choice)
#   prompt(MESSAGES['player'])
# when choice == 'spock' && MOVES[choice][:defeats].include?(computer_choice)
#   prompt(MESSAGES['player'])
# else
#   prompt(MESSAGES['computer'])
# end