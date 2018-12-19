#1
range = 1..255
 puts range.to_a

#2
for i in range
    puts i if i.odd?
end

#3
x=0
0.upto(255){ |i|  x += i; puts "New Number: #{i}" + " Sum: #{x}"}

#4
x = [1,3,5,7,9,13]
for i in 0...x.length
  puts x[i]
end
x.each{ |i| puts i}

#5
x = [3,0,1,5,13]
y = [-1,-12, -5, -2]
puts x.max
puts y.max

#6
avg = 0
for i in 0...x.length
  avg += x[i]
end
puts avg / x.length

#7
arr = (1..255).find_all{ |i| i.odd? }
puts arr

#8
array = [1,3,5,7]
y = 3
puts array.find_all{ |i| i > y}

#9
puts x.collect {|i| i * i}

#10
puts x.collect {|i| i=0 unless i > 0; i}

#11
arr1 = [1,5,10,7,-2]
for i in 0...arr1.length
    sum += arr1[i]
end
avge = sum/arr1.length
puts [[:max, arr1.max], [:min,arr1.min], [:average, avge]].to_h

#12
x = [1,5,10,-2]
x.shift
x.push(0)
puts x

#13
x = [-1,-3,2]
puts x.collect {|i| i="Dojo" unless i > 0; i}