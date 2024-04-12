def rental_car_cost(d)
  cost = 40 * d
  return cost - 50 if d >= 7
  return cost - 20 if d > 2
  return cost
end

puts rental_car_cost(2)
puts rental_car_cost(3)
puts rental_car_cost(1)
