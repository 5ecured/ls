def reverse!(arr)
  arr2 = []
  arr.size.times do
    arr2 << arr.pop
  end

  arr2.size.times do
    arr << arr2.shift
  end
  arr
end

p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

