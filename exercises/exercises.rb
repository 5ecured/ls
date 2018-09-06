# 1.
# arr = [1,2,3,4,5,6,7,8,9,10]

# arr.each do |num|
#   puts num
# end


# 2.
# arr = [1,2,3,4,5,6,7,8,9,10]
# arr.each do |num|
#   puts num if num > 5
# end


# 3.
# arr = [1,2,3,4,5,6,7,8,9,10]
# new_arr = arr.select do |num|
#   num.odd?
# end

# puts new_arr


# 4.
# arr = [1,2,3,4,5,6,7,8,9,10]
# arr.push(11)
# arr.unshift(0)
# puts arr


# 5.
# arr = [0,1,2,3,4,5,6,7,8,9,10,11]
# arr.pop
# arr << 3
# puts arr


# 6.
# arr = [0,1,2,3,4,5,6,7,8,9,10,3]
# puts arr.uniq


# 7.
# array is ordered, does not have key value pairs. hash has key value pairs

# 8.
# a = {
#   :batman => '1975',
#   :superman => '2010',
#   :catman => '2004'
# }

# b = {
#   batman: '1975',
#   superman: '2010',
#   catman: '2004'
# }


# 9.
# h = {
#   a:1,
#   b:2,
#   c:3,
#   d:4
# }

# h[:e] = 5

# a = h.delete_if do |k, v|
#   v < 3.5
# end


# 10.
# definitely. a hash value can be an array. you can also have an array of hashes. many websites, if you check console (chrome),
# you will see that the data they contain are hashes inside of an array.

# 11.
# the classic ruby-doc is good as it is clear and gives good examples

# 12.
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]

# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13.
# puts contacts["Joe Smith"][:email]
# puts contacts["Sally Johnson"][:phone]


# 14.
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# fields = [:email, :address, :phone]

# contacts.each do |k, v|
#   fields.each do |field|
#     v[field] = contact_data.shift
#   end
# end

# p contacts

# 15.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if do |x|
#   x.start_with?('s') || x.start_with?('w')
# end


# 16.
# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# b = a.map do |word|
#   word.split
# end

# p b.flatten


# 17.
# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end

# they are the same
