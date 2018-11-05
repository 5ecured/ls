def rotate_array(a) #From prev exercise!!!
  a[1..-1] + [a[0]] # the second part has to be enclosed in []. otherwise it is only an integer. cannot add int to arr
end

def rotate_rightmost_digits(a, b)
  digits = a.to_s.chars #we turn this to an array so that we can use the method from prev exercise
  digits[-b..-1] = rotate_array(digits[-b..-1])
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

