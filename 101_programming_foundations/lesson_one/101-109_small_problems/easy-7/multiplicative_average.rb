def show_multiplicative_average(a)
  total = a.inject(:*).to_f / a.length.to_f
  puts format('%.3f', total)
end


show_multiplicative_average([3, 5])
