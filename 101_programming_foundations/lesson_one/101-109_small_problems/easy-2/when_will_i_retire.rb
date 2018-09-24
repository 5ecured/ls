puts "whats your age?"
age = gets.chomp.to_i

puts 'at wat age will you retire?'
retire = gets.chomp.to_i

current = Time.now.year
total = retire - age

puts "its #{current}. you will retire in #{total + current}"
puts "you only have #{total} years of work to go!"
