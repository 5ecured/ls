def find_dup(a)
  a.find do |n|
    a.count(n) == 2
  end
end



p find_dup([1, 5, 3, 1]) == 1
