def negative(a)
  if a >= 0
    -a
  elsif a <= 0
    a
  end
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
