def lights(n)
  switches = Hash.new(false)
  n.times do |count|
    ((count+1)..n).step(count+1) do |i|
      switches[i] = !switches[i]
    end
  end
  switches.select { |k, v| v == true }.keys
end

p lights(1000)
