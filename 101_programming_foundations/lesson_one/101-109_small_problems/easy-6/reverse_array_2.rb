def reverse(arr)
  result = []
  arr.each do |n|
    result.unshift(n)
  end
  result
end
