def caesar_cipher(shift_num)
  puts 'Enter a message to encrypt: '
  message = gets.chomp
  encryption = ''
  message.each_char do |char|
    encryption += if char.ord >= 65 && char.ord <= 90
                    (((char.ord - 65 + shift_num) % 26) + 65).chr
                  elsif char.ord >= 97 && char.ord <= 122
                    (((char.ord - 97 + shift_num) % 26) + 97).chr
                  else
                    char
                  end
  end
  puts encryption
end

caesar_cipher(3)
