def print_in_box(a)
  horizontal = "+#{'-' * (a.length + 2)}+"
  empty = "|#{' ' * (a.length + 2)}|"

  puts horizontal
  puts empty
  puts "| #{a} |"
  puts empty
  puts horizontal

end








print_in_box('To boldl.')
