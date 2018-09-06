# def take_block(&block)
#   block.call
# end

# take_block do
#   puts "Block being called in the method!"
# end

# def take_block(number, &block)
#   block.call(number)
# end

# number = 42
# take_block(number) do |num|
#   puts "Block being called in the method! #{num}"
# end


# talk = Proc.new do
#   puts "I am talking."
# end

# talk.call


names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end
