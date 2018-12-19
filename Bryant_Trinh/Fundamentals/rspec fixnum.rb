class Fixnum
	def prev
		self -1
	end
	def skip
		self +2
	end
	def double
		self *2
	end
	def my_upto num
		(1..num).each do |i|
			yield i
		end
	end
	def my_times
		(1..self).each do |i|
			yield
		end
	end
end
