def center_of(a)
  mid = a.length / 2

  if a.length.even?
    a[mid - 1, 2]
  elsif a.length.odd?
    a[mid]
  end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
