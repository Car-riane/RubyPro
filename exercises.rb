array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each { |num| puts num if num > 5 }

array.select { |num| puts num if num % 2 == 1}
