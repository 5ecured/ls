def short_long_short(a, b)
  if b.length > a.length
    a + b + a
  elsif a.length > b.length
    b + a + b
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
