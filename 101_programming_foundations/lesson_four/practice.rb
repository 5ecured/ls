# 1.
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# hash = {}

# flintstones.each_with_index do |e, i|
#   hash[e] = i
# end

# p hash


# 2.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.sum


# 3.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# new_age = ages.select do |k, v|
#   v <= 99
# end
# p new_age


# 4.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min


# 5.
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# answer = flintstones.index do |a|
#   a[0..1] == 'Be'
# end
# p answer

# 6.
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map! do |name|
#   name[0..2]
# end
# p flintstones

# 9.
# def titleize(a)
#   b = a.split.map do |word|
#     word.capitalize
#   end
#   b.join(' ')
# end

# p titleize('hello how are you')

# 10.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |k, v|
#   if v['age'] <= 17
#     v['age_group'] = 'kid'
#   elsif v['age'] <= 64
#     v['age_group'] = 'adult'
#   else
#     v['age_group'] = 'senior'
#   end
# end

# p munsters
