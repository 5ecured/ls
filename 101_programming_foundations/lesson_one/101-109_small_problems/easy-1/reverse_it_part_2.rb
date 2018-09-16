def method(string)
  new_string = string.split
  better_string = new_string.map do |n|
    n.chars
  end

  answer = better_string.map do |c|
    if c.length < 5
      c.join
    else
      c.reverse.join
    end
  end

  answer.join(' ')

end

p method('Professional')          # => lanoisseforP
p method('Walk around the block') # => Walk dnuora the kcolb
p method('Launch School')         # => hcnuaL loohcS
