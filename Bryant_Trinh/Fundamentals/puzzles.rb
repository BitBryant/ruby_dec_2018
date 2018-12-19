#1
a= [3,5,1,2,7,9,8,13,25,32]
a.sum
a.find_all { |i| i>10 }

#2
a=["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
a.shuffle
a.find_all { |i| i.length > 5}

#3
a=("a".."z").to_a
a.shuffle.last
a.first(if (string[i]=="a" || string[i]=="e" || string[i]=="i" || string[i]=="o"|| string[i]=="u")
	puts "This is a vowels"
end)

#4
a= Array.new(10){ |i| rand(55..100)}

#5
a= Array.new(10){ |i| rand(55..100)}
a.sort
a.min
a.max

#6
(60+rand(26)).chr*5

#7
Array.new(10){|i| (60+rand(26)).chr*5 }