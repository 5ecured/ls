def reverse(a)
  a[0], a[-1] = a[-1], a[0]
  a
end


def swap(a)
  b = a.split.map do |word|
    reverse(word)
  end
  b.join(' ')
end

p swap('Oh what a wonderful day it is')
