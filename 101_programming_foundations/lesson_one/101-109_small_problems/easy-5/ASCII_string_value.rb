def ascii_value(a)
  arr = []
  a.chars.each do |n|
    ord = n.ord
    arr << ord
  end
  arr.sum
end









p ascii_value('Four score')
