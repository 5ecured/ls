puts 'whats ur name'
name = gets.chomp

name.include?('!') ? (puts "hello #{name} why are we screaming?".upcase) : (puts "hello #{name}")
