puts "what is the length of the room in meters"
length = gets.chomp.to_i

puts "what is the width of the room in meters"
width = gets.chomp.to_i

feet = (length * width) * 10.7639

puts "the area of the room is #{length * width} square meters (#{feet} square feet"
