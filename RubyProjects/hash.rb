{
  car:    { type: 'sedan', color: 'blue', year: 2003}
  truck:  {  type: 'pickup' color: 'red', year: 1998}
}

numbers = {
  high:   100,
  medium: 50,
  low:    10
} 

cars = [[:type, 'sedan'], [:color, 'blue'], [:year, 1998]]

# numbers.each {|key, value| puts "A #{key} number is #{value}"}
# half_numbers = numbers.map { |key, value| value / 2}
# p half_numbers

# low_numbers = numbers.select! { |key, value| value < 25 }
# p low_numbers
# p numbers

