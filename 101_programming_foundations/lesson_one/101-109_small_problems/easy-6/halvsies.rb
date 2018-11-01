def halvsies(array)
  avg = (array.length / 2.0).round #important to use .0 so it gives the exact number.
  [array[0, avg], array[avg, avg]] #here, its basic. 'start from index 0, get me (avg)'. naturally, the second part is always correct
end
