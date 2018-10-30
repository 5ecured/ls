def reverse(a)
  arr = []
  a.each do |n|
    n.reverse!
  end
  # p arr
end


list = ['hello','world','how']
p list.object_id

p reverse(list).object_id



# b = list.each do |n|
#   n.chars do |m|
#     p m
#   end
# end
