# 1.
# arr = ['10', '11', '9', '7', '8']
# arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end

# 2.
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by do |book|
#   book[:published]
# end

# 3.
# arr1[2][1][3]

# arr2[1][:third][0]

# arr3[2][:third][0][0]

# hsh1['b'][1]

# hsh2[:third].key(0)

# 4.
# arr1[1][1] = 4

# arr2[2] = 4

# hsh1[:first][2][0] = 4

# hsh2[['a']][:a][2] = 4

# 5.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# # }
# arr = []
# munsters.each_value do |v|
#   arr << v['age'] if v['gender'] == 'male'
# end

# p arr.sum


# 6.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |k, v|
#   puts "#{k} is a #{v['age']} year old #{v['gender']}"
# end



# 7.
# [4, [3, 8]]


# 8.
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# vowels = 'aeiou'

# hsh.each do |k, v|
#   v.each do |word|
#     word.chars.each do |letter|
#       puts letter if vowels.include?(letter)
#     end
#   end
# end


# 9.
# arr.map do |sub|
#   sub.sort do |a, b|
#     b <=> a
#   end
# end

# 10.
# b = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |sub|
#   hash = {}
#   sub.each do |k, v|
#     hash[k] = v + 1
#   end
#   hash
# end

# 11.
# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# arr.map do |sub|
#   sub.select do |t|
#     t % 3 == 0
#   end
# end

# 12.
# hsh = {}
# arr.each do |item|
#   hsh[item[0]] = item[1]
# end


# 13.
# arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end

# 14.
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# hsh.map do |k, v|
#   if v[:type] == 'fruit'
#     v[:colors].map do |color|
#       color.capitalize
#     end
#   elsif v[:type] == 'vegetable'
#     v[:size].upcase
#   end
# end


# 15.
# arr.select do |sub|
#   sub.all? do |k, v|
#     v.all? do |num|
#       num.even?
#     end
#   end
# end






