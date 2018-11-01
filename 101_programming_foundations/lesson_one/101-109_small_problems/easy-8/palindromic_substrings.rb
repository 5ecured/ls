def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

def palindromes(str)
  substrings(str).select { |sub| sub.size > 1 && sub == sub.reverse }
end


