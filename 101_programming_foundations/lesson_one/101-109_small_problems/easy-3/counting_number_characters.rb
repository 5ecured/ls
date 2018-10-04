puts "Please write a word or multiple words"
answer = gets.chomp

total = answer.delete(' ').length

puts "There are #{total} characters in #{answer}"
