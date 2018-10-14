def cleanup(a)
  a.gsub(/[^a-z]/i, ' ').squeeze
end

p cleanup("---what's my +*& line?")
