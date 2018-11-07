def balanced?(string)
  open_brackets = 0
  close_brackets = 0
  string.chars.each do |c|
    open_brackets += 1 if c == '('
    close_brackets += 1 if c == ')'
    return false if close_brackets > open_brackets
  end
  open_brackets == close_brackets
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
