def sum_of_sums(a)
  sum = 0

  a.map do |n|
    sum += n
  end.inject(:+)
end

p sum_of_sums([3, 5, 2])

p sum_of_sums([1, 5, 7, 3])

p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
