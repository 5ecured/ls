puts "whats the bill?"
bill = gets.chomp.to_i

puts "what is the tip percentage?"
percent = gets.chomp.to_i

tip = (percent * bill) / 100

puts "the tip is $#{tip}"
puts "the total is #{bill + tip}"
