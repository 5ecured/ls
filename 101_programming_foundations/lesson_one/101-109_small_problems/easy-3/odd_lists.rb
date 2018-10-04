def oddities(a)
  array = []
  a.each_with_index do |e, i|
    array << e if i.even?
  end
  array
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
