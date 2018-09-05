def evaluate(num)


  # if num > 0 && num <= 50
  #   puts 'it is between 0 to 50'
  # elsif num >= 51 && num <= 100
  #   puts 'it is between 51 and 100'
  # else
  #   puts ' it is above 100'
  # end

  case num
  when 0..50
    puts 'it is between 0 to 50'
  when 51..100
    puts 'it is between 51 and 100'
  else
    puts 'more than 100'
  end

end

puts 'enter between 0 to 100'
num = gets.chomp.to_i

evaluate(num)
