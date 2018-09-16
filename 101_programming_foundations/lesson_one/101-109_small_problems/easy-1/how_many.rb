vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count(a)
  hash = {}

  a.each do |b|
    hash[b] = a.count(b)
  end

  hash.each do |k, v|
    puts "#{k} => #{v}"
  end
end

count(vehicles)
