module MyEnumerable
  def my_each
    arr=[]
    for i in (0...self.length)
    	(arr <<self[i] if yield == true)
  end
end
end
class Array
   include MyEnumerable
end
ans=[1,54,87,95,153,5].my_each{ |i| i<90 } 
p ans