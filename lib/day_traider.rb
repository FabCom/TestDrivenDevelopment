def day_trader(prices)
  arrayOfDifferences=[]
  prices.each_with_index do |value_a, a|
    arrayOfDifferences +=  prices[a+1,prices.length-a].map.with_index{|value_b, b| [a,b+a+1,value_b - value_a] }
  end
  diffMax = arrayOfDifferences.map {|e| e[2]}.max
  return arrayOfDifferences.select {|e| e[2]==diffMax}[0][0,2]
end


print day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])

puts "salut"
