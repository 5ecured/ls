def print_in_box(a)
  puts "+#{'-' * (a.length + 2)}+"
  puts "|#{' ' * (a.length + 2)}|"
  puts "| #{a} |"
  puts "|#{' ' * (a.length + 2)}|"
  puts "+#{'-' * (a.length + 2)}+"
end








  print_in_box('To boldly go where no one has gone before.')
