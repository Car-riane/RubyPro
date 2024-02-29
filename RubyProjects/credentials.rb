puts 'Please Enter your username:'
username = gets.chomp.to_s
USERNAME = 'carri'
puts 'Please Enter your password:'
password = gets.chomp.to_s
PASSWORD = '1a2b3c'
loop do
  if password == PASSWORD && username == USERNAME
    puts 'Hello and Welcome'
    break
  else
    puts 'Invalid password/username, try again'
    username = gets.chomp.to_s
    password = gets.chomp.to_s
  end
end