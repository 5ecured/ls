def swapcase(a)
  answer = a.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char #this line is important otherwise the 2nd test will not have spaces.
    end
  end
  answer.join
end



p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')
