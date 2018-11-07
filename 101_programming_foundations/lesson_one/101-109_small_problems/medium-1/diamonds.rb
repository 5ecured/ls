def diamond(n)
  1.upto(n) { |num| puts "#{'*' * num}".center(n) if num.odd? }
  (n-2).downto(1) { |num| puts "#{'*' * num}".center(n) if num.odd? }
end


diamond(5)
diamond(10)
