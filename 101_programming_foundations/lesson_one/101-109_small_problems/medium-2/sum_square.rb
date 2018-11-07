def square_of_the_sum(b)
  ((1..b).to_a.inject(:+)) ** 2
end

def sum_of_the_squares(c)
  (1..c).to_a.map{ |n| n**2 }.inject(:+)
end

def sum_square_difference(a)
  square_of_the_sum(a) - sum_of_the_squares(a)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
