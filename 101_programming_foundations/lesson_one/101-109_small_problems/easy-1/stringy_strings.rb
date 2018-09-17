def stringy(a)
  array = []

  a.times do |n|
    num = n.even? ? 1 : 0
    array.push(num)
  end

  array.join

end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
