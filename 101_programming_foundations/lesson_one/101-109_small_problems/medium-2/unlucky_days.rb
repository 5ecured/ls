require 'date'
def friday_13th(year)
  friday_13ths = 0

  (1..12).each do |month|
    friday_13ths += 1 if Date.new(year, month, 13).wday == 5 #5 represents friday. starts at sunday which is 0
  end
  friday_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
