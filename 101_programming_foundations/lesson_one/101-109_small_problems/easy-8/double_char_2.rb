CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(a)
  final_string = ''

  a.chars.each do |n|
    final_string << n
    final_string << n if CONSONANTS.include?(n.downcase)
  end

  final_string
end



p double_consonants('String')
