def get_sum(a, b)
  a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end

puts get_sum(3, 5)
