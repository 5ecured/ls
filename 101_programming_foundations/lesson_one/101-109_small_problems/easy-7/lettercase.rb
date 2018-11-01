def letter_case_count(a)
  hash = {}
  chars = a.chars

  hash[:lowercase] = chars.count do |char|
    char =~ /[a-z]/
  end

  hash[:uppercase] = chars.count do |char|
    char =~ /[A-Z]/
  end

  hash[:neither] = chars.count do |char|
    char =~ /[^A-Za-z]/
  end

  hash
end

# count can be used three ways:
# ary = [1, 2, 4, 2]
# ary.count                  #=> 4
# ary.count(2)               #=> 2
# ary.count { |x| x % 2 == 0 } #=> 3

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
