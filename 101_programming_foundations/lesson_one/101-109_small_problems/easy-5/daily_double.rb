def crunch(a)
  last_char = ''

  b = a.chars.map do |char|
    last_char == char ? '' : last_char = char
  end

  p b.join
end

crunch('ddaaiillyy ddoouubbllee')
