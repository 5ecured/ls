def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#this is a good example to learn from. multiplying all pairs inside 2 arrays. nested iteration on lines 3-7
#without .sort, the result is something i can learn from: [8, 6, 2, 4, 16, 12, 4, 8]
