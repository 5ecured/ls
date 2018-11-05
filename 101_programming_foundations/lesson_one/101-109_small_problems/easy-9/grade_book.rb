def get_grade(a, b, c)
  total = (a + b + c) / 3

  if total >= 91 && total <= 100
    'A'
  elsif total >= 81 && total <= 90
    'B'
  elsif total >= 71 && total <= 80
    'C'
  elsif total >= 61 && total <= 70
    'D'
  elsif total <= 60
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
