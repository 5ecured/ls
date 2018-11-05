def swap_name(a)
  a.split.reverse.join(', ')
end


p swap_name('Joe Roberts') == 'Roberts, Joe'
