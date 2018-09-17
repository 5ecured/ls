# 1.
# family = {
#   uncles: ["bob", "joe", "steve"],
#   sisters: ["jane", "jill", "beth"],
#   brothers: ["frank","rob","david"],
#   aunts: ["mary","sally","susan"]
# }

# name = family.select do |k, v|
#   k == :sisters || k == :brothers
# end

# p name.values.flatten


# 2.
# h1 = {
#   "a" => 100,
#   "b" => 200
# }

# h2 = {
#   "b" => 254,
#   "c" => 300
# }

# puts h1.merge!(h2)
# puts h1

# merge! mutates the caller. the original h1 is permanently changed


# 3.
# teacher = {
#   name: 'hugo',
#   age: '24',
#   city: 'paris'
# }

# teacher.each do |k, v|
#   puts "#{k}"
# end

# teacher.each do |k, v|
#   puts "#{v}"
# end

# teacher.each do |k, v|
#   puts "#{k} is #{v}"
# end


# 4.
# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# puts person[:name]


# 5.
# movies = {
#   batman: '1971',
#   superman: '2000',
#   catman: '2010'
# }

# puts movies.has_value?('2010')



# 6.
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# result = {}

# words.each do |word|
#   key = word.split('').sort.join
#   if result.has_key?(key)
#     result[key].push(word)
#   else
#     result[key] = [word]
#   end
# end

# result.each do |k, v|
#   puts "------"
#   p k, v
# end


# 7.
# the first x represents a symbol. the second x represents a variable from the previous 2 lines.

# 8.
# B
