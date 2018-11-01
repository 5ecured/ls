def staggered_case(a)
  answer = []
  a.chars.each_with_index do |e, i|
    answer << (i.even? ? e.upcase : e.downcase)
  end
  answer.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
