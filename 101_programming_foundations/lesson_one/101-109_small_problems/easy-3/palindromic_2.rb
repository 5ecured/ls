def real_palindrome?(a)
  a.downcase!
  a.delete!('^A-Za-z')
  a.reverse == a
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')
