def multisum(a)
  array = []

  1.upto(a).each do |num|
    array << num if num % 3 == 0 || num % 5 == 0
  end
  array.sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

