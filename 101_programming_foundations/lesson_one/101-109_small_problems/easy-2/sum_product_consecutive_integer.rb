def sum(a)
  total = 0
  1.upto(a) do |n|
    total += n
  end
  total
end

# OR
# def sum(a)
#   (1..a).inject(:+)
# end

def product(a)
  total = 1
  1.upto(a) do |n|
    total *= n
  end
  total
end

# OR
# def product(a)
#   (1..a).inject(:*)
# end

puts 'please enter a number greater than 0'
num = gets.chomp.to_i

puts 'enter s to sum or p to multiply'
answer = gets.chomp.downcase

if answer == 's'
  puts "the sum of the integers between 1 to #{num} is #{sum(num)}"
elsif answer == 'p'
  puts "the product of the integers between 1 to #{num} is #{product(num)}"
end

