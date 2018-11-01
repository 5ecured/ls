def repeater(a)
  array = []

  a.chars.each do |n|
    array << n
    array << n
  end
  array.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
