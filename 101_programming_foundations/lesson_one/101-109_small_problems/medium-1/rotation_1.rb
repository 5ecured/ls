def rotate_array(a)
  a[1..-1] + [a[0]] # the second part has to be enclosed in []. otherwise it is only an integer. cannot add int to arr
end


# The below code mutates the caller!!!

# def rotate_array!(a)
#   temp = []
#   temp = a.shift
#   a << temp
# end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
