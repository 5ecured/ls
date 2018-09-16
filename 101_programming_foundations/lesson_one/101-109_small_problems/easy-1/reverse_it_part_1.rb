def method(sentence)
  sentence.split.reverse.join(' ')
end

puts method('') == ''
puts method('Hello World') == 'World Hello'
puts method('Reverse these words') == 'words these Reverse'
