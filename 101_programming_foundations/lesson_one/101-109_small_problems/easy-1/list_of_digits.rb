def method(b)
  b.to_s.chars.map do |c|
    c.to_i
  end
end

puts method(12345) == [1, 2, 3, 4, 5]     # => true
puts method(7) == [7]                     # => true
puts method(375290) == [3, 7, 5, 2, 9, 0] # => true
puts method(444) == [4, 4, 4]             # => true
