arr = []

puts 'enter 1st num'
first = gets.chomp.to_i
arr << first

puts 'enter 2nd num'
second = gets.chomp.to_i
arr << second

puts 'enter 3rd num'
third = gets.chomp.to_i
arr << third

puts 'enter 4th num'
fourth = gets.chomp.to_i
arr << fourth

puts 'enter 5th num'
fifth = gets.chomp.to_i
arr << fifth

puts 'enter last num'
last = gets.chomp.to_i

if arr.include?(last)
  puts "The number #{last} appears in #{arr}"
else
  puts "The number #{last} does not appear in #{arr}"
end
