def multiply_list(a, b)
  counter = 0
  arr = []

  until counter == a.length
    total = a[counter] * b[counter]
    arr << total
    counter += 1
  end
  arr
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
